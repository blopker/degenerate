# Degenerate Examples

Real-world usage patterns for degenerate-generated API clients.

## Setup (workspace)

```bash
# Generator
dart pub add dev:degenerate
# Runtime package
dart pub add degenerate_http # or degenerate_dio for Dio

# Generate a client package from a spec (dart workspace)
dart run degenerate --input petstore.yml --name petstore --workspace
```

Root `pubspec.yaml` setup:

```yaml
workspace:
  - packages/petstore

dependencies:
  petstore:
  degenerate_http:
```


## Basic Usage (Petstore)

```dart
import 'package:degenerate_http/degenerate_http.dart';
import 'package:my_app/petstore/petstore.dart';

void main() async {
  final client = HttpApiClient(
    baseUrl: Uri.parse('https://petstore3.swagger.io/api/v3'),
  );
  final sdk = PetstoreApi(ApiConfig(client: client));

  final result = await sdk.pet.findPetsByStatus(status: .available);
  switch (result) {
    case ApiSuccess(:final data):
      for (final pet in data) {
        print('${pet.name} (${pet.status})');
      }
    case ApiError(:final statusCode):
      print('Error: $statusCode');
    case ApiException(:final exception):
      print('Network error: $exception');
  }

  await client.close();
}
```

## OpenAI Chat Completion

```dart
import 'package:degenerate_http/degenerate_http.dart';
import 'package:my_app/openai/openai.dart';

void main() async {
  final client = HttpApiClient(
    baseUrl: Uri.parse('https://api.openai.com/v1'),
  );

  // Apply auth from the generated security helper
  final config = PubOpenaiSecurity.applyApiKeyAuth(
    ApiConfig(client: client, timeout: Duration(seconds: 30)),
    'sk-your-api-key',
  );

  final sdk = PubOpenaiApi(config);

  final result = await sdk.chat.createChatCompletion(
    body: CreateChatCompletionRequest(
      model: .b(.gpt4o),              // OneOf2<String, ModelIdsSharedVariant2> using Dart inferred types
      messages: [
        ChatCompletionRequestMessage.fromJson({
          'role': 'user',
          'content': 'What is Dart?',
        }),
      ],
    ),
  );

  switch (result) {
    case ApiSuccess(:final data):
      print(data.choices.first.message.content);
    case ApiError(:final statusCode, :final rawError):
      print('API error $statusCode: $rawError');
    case ApiException(:final exception):
      print('Network error: $exception');
  }

  await client.close();
}
```

## Streaming (SSE)

Streaming methods return `Stream<T>` and use standard Dart stream error handling:

```dart
final sdk = PubOpenaiApi(config);

try {
  final stream = sdk.chat.createChatCompletionStream(
    body: CreateChatCompletionRequest(
      model: .b(.gpt4o),
      stream: true,
      messages: [
        ChatCompletionRequestMessage.fromJson({
          'role': 'user',
          'content': 'Tell me a joke',
        }),
      ],
    ),
  );

  await for (final event in stream) {
    final delta = event.choices.firstOrNull?.delta;
    if (delta?.content case final text?) {
      stdout.write(text);
    }
  }
  print(); // newline after stream ends
} on ApiStreamError catch (e) {
  print('Stream error ${e.statusCode}: ${e.rawError}');
}
```

## OneOf / Union Types

Many APIs use `oneOf` for fields that accept multiple types. Use named constructors `.a()`, `.b()`, etc. for concise construction:

```dart
// The model field accepts either a free-form string or a known model ID.
// typedef ModelIdsShared = OneOf2<String, ModelIdsSharedVariant2>;

// Use a known model constant:
model: .b(.gpt4o)

// Use a free-form model string:
model: .a('ft:gpt-4o:my-org:custom-suffix:id')

// Pattern match on the value:
switch (response.model.value) {
  case String s => print('Model: $s'),
  case ModelIdsSharedVariant2 m => print('Known model: ${m.value}'),
}
```

## Middleware

Interceptors compose in order. Auth runs before retry, retry wraps logging:

```dart
final config = ApiConfig(
  client: client,
  interceptors: [
    LoggingInterceptor(),
    AuthInterceptor(
      getToken: () async => tokenStore.accessToken,
      refreshToken: () async {
        await tokenStore.refresh();
        return tokenStore.accessToken;
      },
    ),
    RetryInterceptor(maxRetries: 3),
  ],
);
```

## Cancellation

Cancel in-flight requests at the socket level:

```dart
final token = CancelToken();

// Start the request
final future = sdk.chat.createChatCompletion(
  body: request,
  options: RequestOptions(cancelToken: token),
);

// Cancel from another context (timer, UI, etc.)
token.cancel();

// The future completes with ApiException(CancelledException())
```

## Per-Request Options

Override timeout and headers for individual requests:

```dart
final result = await sdk.chat.createChatCompletion(
  body: request,
  options: RequestOptions(
    timeout: Duration(seconds: 120),
    extraHeaders: {'X-Request-Id': uuid.v4()},
  ),
);
```

## Riverpod Integration

Generated models work well with Riverpod — immutable classes with `==`/`hashCode` for change detection and `copyWith` for state updates:

```dart
@riverpod
Future<List<Pet>> availablePets(Ref ref) async {
  final token = CancelToken();
  ref.onDispose(token.cancel);

  final result = await ref.watch(sdkProvider).pet.findPetsByStatus(
    status: .available,
    options: RequestOptions(cancelToken: token),
  );
  return result.dataOrThrow;
}
```

`dataOrThrow` returns the success data or throws — `ApiError` (which implements `Exception`) for HTTP errors, or rethrows the original exception for network failures. Riverpod surfaces these through `AsyncValue.error`.

## Response Envelope Unwrapping

APIs like Cloudflare wrap every response in `{success, errors, messages, result}`. Use `--unwrap-fields` to return the inner type directly:

```bash
dart run degenerate -i cloudflare.yaml -n cloudflare --unwrap-fields=result
```

```dart
// Without unwrapping:
// Future<ApiResult<ZonesGetResponse, Never>> — must access .result
// With unwrapping:
// Future<ApiResult<List<Zone>, Never>> — direct access
final result = await sdk.zones.get();
switch (result) {
  case ApiSuccess(:final data):
    for (final zone in data) {
      print(zone.name);
    }
}
```
