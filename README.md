<!--Ensure all links are absolute, from https://github.com/blopker/degenerate/ or https://raw.githubusercontent.com/blopker/degenerate/main/ for assets-->
<div align="center">
  <img src="https://raw.githubusercontent.com/blopker/degenerate/main/assets/degenerate.webp" alt="degenerate" width="400">
  <h1>degenerate</h1>
  <p><strong>A fast, opinionated OpenAPI 3.x to Dart code generator.</strong></p>
  <p>
    <a href="https://pub.dev/packages/degenerate">pub.dev</a> &middot;
    <a href="https://github.com/blopker/degenerate">GitHub</a>
  </p>
  <p>
    <a href="#features">Features</a> &middot;
    <a href="#quick-start">Quick Start</a> &middot;
    <a href="#migrating-from-04x">Migration</a> &middot;
    <a href="#usage">Usage</a> &middot;
    <a href="#streaming">Streaming</a> &middot;
    <a href="#middleware">Middleware</a> &middot;
    <a href="#tested-specs">Tested Specs</a>
  </p>
  <p>
    A Dart OpenAPI client generator that actually works on real-world specs. Zero analysis issues<br>
    on Stripe, GitHub, Kubernetes, OpenAI, Cloudflare, and 6 others, with no manual fixups.
  </p>
</div>

---

## Features

- **Strives for full OpenAPI 3.0, 3.1, and 3.2 compatibility** including `allOf`, `oneOf`, `anyOf`, discriminated unions, `additionalProperties`, nullable types, circular references, external `$ref` file resolution, and the OAS 3.2 `query` method + `additionalOperations`. [File a bug](https://github.com/blopker/degenerate/issues) if something doesn't work
- **Forward-compatible**: unknown enum values preserve their raw string for round-trip fidelity; unknown union discriminators produce typed `$Unknown` variants
- **Typed unions**: untagged `oneOf` schemas use generic `OneOf` containers with pattern matching; untagged `anyOf` classes retain the original JSON and expose every matching typed view
- **Responses by status and media type**: operations with multiple response shapes generate sealed success/error variants for exhaustive matching, including empty responses and unknown statuses
- **Typed streaming**: SSE (`text/event-stream`) and JSONL (`application/jsonl`) responses with `itemSchema` return `Stream<T>` with typed deserialization
- **Omittable fields (JSON Merge Patch)**: optional nullable fields generate as `Omittable<T?>` so "omitted", "explicit null", and "value" all survive serialization — PATCH endpoints can clear a field with `Omittable(null)`
- **Response envelope unwrapping**: `--unwrap-fields=result` returns the inner type directly instead of the full envelope, matching how Stainless generates Cloudflare/OpenAI SDKs
- **Zero analysis issues**: generated code passes default `dart analyze` with no errors, warnings, or hints
- **Fast**: generates ~14,000 files from the Cloudflare spec in ~6 seconds (AOT compiled)
- **Tag & path filtering**: generate only the APIs you need with `--tag` and `--path`; unused types are automatically tree-shaken
- **Multi-format request/response**: JSON, text, binary, multipart/form-data, and form-urlencoded bodies with media-type-aware serialization
- **Pluggable HTTP**: bring your own HTTP client via `degenerate_http` (package:http) or `degenerate_dio` (package:dio), or implement the `ApiClient` interface
- **Cancel tokens & per-request options**: cancel in-flight requests at the socket level, override timeout/headers per call
- **OkHttp-style middleware**: single `intercept(request, next)` pattern with built-in retry, auth, and logging interceptors
- **Modular output**: one file per model, small types inlined into their parent, barrel file for convenient imports

## Quick Start

The generator requires Dart 3.11.1 or later. Generated clients and the runtime
packages require Dart 3.8.0 or later.

```bash
# Add to your pubspec.yaml
dart pub add dev:degenerate
```

```bash
# Generate a client from a spec
dart run degenerate -i petstore.yaml -n petstore
```

The generated code is placed in `lib/petstore/` by default. Add the dependencies the CLI tells you to your `pubspec.yaml`, then use the client:

```dart
import 'package:degenerate_http/degenerate_http.dart';
import 'package:my_app/petstore/petstore.dart';

void main() async {
  final client = HttpApiClient(
    baseUrl: Uri.parse(PetstoreApi.defaultBaseUrl),
  );

  final sdk = PetstoreApi(
    ApiConfig(
      client: client,
      interceptors: [
        LoggingInterceptor(),
        RetryInterceptor(maxRetries: 2),
      ],
      timeout: Duration(seconds: 10),
    ),
  );

  final result = await sdk.pet.findPetsByStatus(
    status: FindPetsByStatusStatus.available,
  );

  switch (result) {
    case ApiSuccess(:final data):
      print('Found ${data.length} pets');
    case ApiError(:final statusCode, :final rawError):
      print('Error $statusCode: $rawError');
    case ApiParseException(:final response):
      // Server returned 2xx but body didn't match the spec.
      // Fall back to raw response for manual parsing.
      print('Bad response body: ${response.body}');
    case ApiException(:final exception):
      print('Network error: $exception');
  }

  await client.close();
}
```

See [`example/`](https://github.com/blopker/degenerate/tree/main/example) for a full working example against the live Petstore API, [`example_workspace/`](https://github.com/blopker/degenerate/tree/main/example_workspace) for a Dart workspace setup, and [`example.md`](https://github.com/blopker/degenerate/blob/main/packages/degenerate/example/example.md) for more usage patterns including OpenAI, streaming, and Riverpod.

## Migrating from 0.4.x

Version 0.5.0 changes generated model types and the middleware response contract.
Upgrade `degenerate`, `degenerate_runtime`, and your adapter (`degenerate_http`
or `degenerate_dio`) together to the 0.5.x release line, then regenerate and
format your client using the same schema and CLI options. Regenerated clients
require the new runtime; the 0.4.x runtime does not provide `Omittable`.

| Change | Migration |
|--------|-----------|
| Optional nullable fields use `Omittable<T?>` in request and response models | Wrap supplied values with `Omittable(value)`, read with `.value`, and check `.isPresent` when absence matters. Omit a field by leaving the constructor argument out. |
| Schema defaults no longer populate absent fields | Use `fieldOrDefault` when you want the schema's fallback. Supply every required constructor argument, even if its schema has a default. |
| Untagged `anyOf` exposes all matching views | Replace `.a(value)` / `.b(value)` constructors with named views such as `Combined(a: Omittable(value))`. Read each view through `.value`. |
| `readOnly` / `writeOnly` can produce separate models | Use the operation's generated `NameRequest` and `NameResponse` types where their shapes differ. |
| Multiple response shapes use sealed variants | Match on typed success/error variants such as `PostAuthSuccess200(:final data)`. Single-shape operations keep plain payload types. Update references to inline models whose names now include status codes. |
| Middleware receives streamed responses | Change custom `intercept` return types and `retryWhen` parameters to `StreamedApiResponse`. Buffer and re-wrap a response if you inspect its body. |

Run `dart analyze` and your application tests after regeneration. Also review
comparisons, null checks, string interpolation, and values passed to `dynamic`
APIs: reading an `Omittable` wrapper instead of its `.value` can still compile.
For example, change `user.name == name` to `user.name.value == name`, and
`'Hello ${user.name}'` to `'Hello ${user.name.value ?? "there"}'`.

See [presence and defaults](#omittable-fields-json-merge-patch),
[response variants](#request-and-response-models), [anyOf](#overlapping-unions-anyof),
and [middleware](#middleware) for examples. The
[changelog](https://github.com/blopker/degenerate/blob/main/CHANGELOG.md)
lists all release changes.

## Usage

```
dart run degenerate [options]

Options:
  -i, --input              Path to OpenAPI spec, or "-" for stdin (required)
  -o, --output             Base output directory (default: lib, or packages with --workspace)
  -n, --name               Package name (default: api_client). Appended to -o to form the output path.
  -t, --tag                Only include APIs matching these tags (repeatable)
  -p, --path               Only include operations under these path prefixes (repeatable)
      --include-deprecated  Include deprecated operations
      --clean              Remove output directory before generating
      --workspace          Generate a standalone package with pubspec.yaml (for Dart workspaces)
  -v, --verbose            Print IR and diagnostics
      --dry-run            Parse and validate without writing files
      --unwrap-fields      Unwrap response envelopes by extracting named fields (repeatable)
      --omittable          How optional fields distinguish "omitted" from "set to null":
                           nullable (default) wraps optional nullable fields in Omittable<T>,
                           all wraps every optional field, off uses plain T? (null = omitted)
  -h, --help               Show help
      --version            Print the tool version
```

### Output Modes

**Default mode** generates code directly into your project's `lib/` directory:

```bash
dart run degenerate -i petstore.yaml -n petstore
# Output: lib/petstore/
```

After generation, the CLI prints the dependencies you need to add to your `pubspec.yaml`.

**Workspace mode** (`--workspace`) generates a standalone Dart package with its own `pubspec.yaml`:

```bash
dart run degenerate -i petstore.yaml -n petstore --workspace
# Output: packages/petstore/
```

The CLI prints instructions for adding the package to your workspace and dependencies.

### Code Formatting

Generated code is not formatted. Run `dart format` on the output to apply your project's formatting preferences:

```bash
dart run degenerate -i petstore.yaml -n petstore
dart format lib/petstore/
```

### Examples

```bash
# Generate into a custom directory
dart run degenerate -i petstore.yaml -o clients -n petstore
# Output: clients/petstore/

# Only generate DNS-related APIs from a large spec
dart run degenerate -i cloudflare.yaml -t dns

# Multiple tags
dart run degenerate -i cloudflare.yaml -t dns -t workers

# Filter by path prefix
dart run degenerate -i cloudflare.yaml -p /zones

# Verbose output
dart run degenerate -i kubernetes-api.json -n k8s --verbose

# Clean output directory before generating (removes stale files)
dart run degenerate -i spec.yaml --clean

# Dry run to check for issues without writing files
dart run degenerate -i spec.yaml --dry-run

# Pipe a spec from a URL
curl -s https://petstore3.swagger.io/api/v3/openapi.json | dart run degenerate -i - -n petstore

# Workspace mode with custom output base
dart run degenerate -i spec.yaml -o my_packages --workspace -n my_api
# Output: my_packages/my_api/

# Unwrap Cloudflare-style response envelopes
# Methods return T directly instead of {success, errors, messages, result: T}
dart run degenerate -i cloudflare.yaml --unwrap-fields=result
```

Tag matching is case-insensitive and ignores spaces, underscores, and hyphens. When tags or paths are specified, unused types are automatically tree-shaken from the output.

## Packages

The generator itself is a command-line tool (desktop only), but the generated code and runtime packages work on all Dart and Flutter platforms including iOS, Android, web, and desktop.

The runtime is split into separate packages so generated code has no opinion on which HTTP client you use:

| Package | Purpose | Dependencies |
|---------|---------|-------------|
| `degenerate_runtime` | Core interfaces (`ApiClient`, `ApiConfig`, `ApiResult`), presence and union types, middleware | `meta` |
| `degenerate_http` | `HttpApiClient` adapter using `package:http` | `http`, `degenerate_runtime` |
| `degenerate_dio` | `DioApiClient` adapter using `package:dio` | `dio`, `degenerate_runtime` |

The adapter packages re-export `degenerate_runtime`, so you only need a single import:

```dart
// This gives you HttpApiClient + all runtime types (ApiConfig, ApiResult, interceptors, etc.)
import 'package:degenerate_http/degenerate_http.dart';
```

### Using Dio

```dart
import 'package:degenerate_dio/degenerate_dio.dart';
import 'package:dio/dio.dart';
import 'package:my_app/petstore/petstore.dart';

final dio = Dio()
  // For granular timeout control, configure Dio directly
  // and leave ApiConfig.timeout null:
  ..options.connectTimeout = Duration(seconds: 5)
  ..options.receiveTimeout = Duration(seconds: 30);

final sdk = PetstoreApi(ApiConfig(
  client: DioApiClient(baseUrl: Uri.parse(PetstoreApi.defaultBaseUrl), inner: dio),
  // timeout: Duration(seconds: 10), // or use a single overall deadline here
));
```

Use the `Dio` instance for low-level settings like proxy configuration, custom adapters, and granular timeouts. Configure default headers, interceptors, and cancellation through `ApiConfig`.

## Generated Output

**Default mode** (`lib/<name>/`):

```
<name>.dart              Barrel file (exports everything)
models/
  pet.dart               Data classes with fromJson/toJson/copyWith/==/hashCode
  pet_status.dart        Enum-like class with unknown value preservation
  user_id.dart           Extension type for branded primitives
  pet_or_error.dart      OneOf typedef for untagged unions
  shape.dart             Sealed class for discriminated unions
apis/
  pets_api.dart          API client class with typed methods
client/
  <name>_api.dart        Root SDK facade with lazy API group accessors
```

**Workspace mode** (`packages/<name>/`):

```
lib/
  <name>.dart            Barrel file
  models/                (same as above)
  apis/
  client/
pubspec.yaml             Generated with correct dependencies
```

Small types (extension types and enums) referenced by a single parent are automatically inlined into the parent's file to reduce file count.

### Data Classes

Each schema with `properties` generates a `final class` with:

- `const` constructor with named parameters
- `factory fromJson(Map<String, dynamic>)` for deserialization
- `toJson()` returning `Map<String, dynamic>`
- `copyWith()` with nullable callbacks for optional fields (`Omittable` values for omittable fields)
- Value equality (`==` and `hashCode`)
- `toString()` with all fields
- `additionalProperties` overflow `Map<String, T>` when the schema allows extra keys

### Omittable Fields (JSON Merge Patch)

An optional nullable field has three legal wire states: the key is absent
("don't touch"), the key is `null` ("clear"), or the key has a value. A plain
`T?` can't express all three, so fields that are optional **and** nullable
(`nullable: true` / `type: [T, 'null']`) generate as `Omittable<T?>`:

```dart
// PATCH /users/{id} with application/merge-patch+json
await api.patchUser(userId: 'u1', body: UserPatch());                                  // {}
await api.patchUser(userId: 'u1', body: UserPatch(displayName: Omittable(null)));      // {"display_name": null}
await api.patchUser(userId: 'u1', body: UserPatch(displayName: Omittable('Bo')));      // {"display_name": "Bo"}
```

Reading works the same way — `user.displayName.isPresent` tells you whether
the server sent the key at all, and `fromJson`/`toJson` round-trip all three
states exactly. Required fields always serialize their key (a required
nullable field sends an explicit `null`), and optional non-nullable fields
stay plain `T?` since `null` isn't a legal wire value for them.

When adapting a method where a nullable argument means "leave unchanged",
preserve that meaning explicitly:

```dart
UserPatch profilePatch({String? displayName}) => UserPatch(
  displayName: displayName == null
      ? const Omittable.absent()
      : Omittable(displayName),
);
```

Wrapping that argument unconditionally with `Omittable(displayName)` would send
an explicit null when it is unspecified. To let callers choose between all
three states, accept an `Omittable<String?>` parameter with a default of
`const Omittable.absent()` instead.

For these fields, `copyWith(displayName: Omittable(null))` sets explicit null,
`copyWith(displayName: const Omittable.absent())` removes the field from the
serialized object, and `copyWith()` preserves the current state.

Escape hatches for non-conforming servers: `--omittable=all` wraps *every*
optional field so you can send explicit nulls the spec doesn't declare, and
`--omittable=off` restores plain `T?` fields where Dart `null` serializes as
omitted.

Schema defaults do not make an optional field present. For a defaulted field
such as `status`, `statusOrDefault` exposes the declared default when the field
is absent; `toJson()` still omits it. With omittable fields, an explicit null
stays null, including through the default getter. These rules also apply to
fields on discriminated-union variants.

### Request and Response Models

Operations use separate `NameRequest` and `NameResponse` models when
`readOnly` or `writeOnly` changes their shape. Request models exclude read-only
properties; response models exclude write-only properties and their required
constraints. Nested and recursive references use the same direction. Models
whose shapes do not change stay shared.

Declared `2xx` responses determine the success type. Operations with multiple
response shapes generate named sealed classes on the success or error side.
Each variant exposes its typed `data`; empty responses have payload-free
variants. Operations with one shape keep their plain `ApiResult<T, E>` signature.

For example, a `postAuth` operation returning a token at `200` and a new user ID
at `201` allows an exhaustive switch:

```dart
final result = await api.postAuth(body: credentials);
switch (result.dataOrThrow) {
  case PostAuthSuccess200(:final data):
    print(data.accessToken);
  case PostAuthSuccess201(:final data):
    print(data.userId);
  case PostAuthSuccessUnknown(:final response):
    print('New status ${response.statusCode}: ${response.body}');
}
```

Decoders select the variant by status and `Content-Type`. Exact statuses
override ranges such as `2XX`, which produce variants such as `PostAuthSuccess2xx`.
When a status offers different media shapes, variant names include the media
type, such as `FetchSuccess200ApplicationJson` and `FetchSuccess200TextPlain`.
Inline models keep the bare `PostAuthResponse` name for the primary success;
other statuses use names such as `PostAuthResponse201` and `PostAuthResponseDefault`.

A `default` response supplies fallback errors; it contributes to success only
when the operation declares no `2xx` response. A response union without a default
has an `Unknown` variant retaining the original `ApiResponse`, including status,
headers, and body bytes. Malformed declared payloads still produce
`ApiParseException`. Single-shape successes continue decoding compatible new
`2xx` statuses into their existing type. Envelope unwrapping applies to each
success payload before determining whether a response union is needed.

### Enums

String, integer, and number enums generate a `final class` with static const instances. Unknown server values are preserved via the raw `value` field, enabling round-trip fidelity:

```dart
final class PetStatus {
  static const available = PetStatus._('available');
  static const pending = PetStatus._('pending');
  static const sold = PetStatus._('sold');
  static const values = [available, pending, sold];

  final String value;
  const PetStatus._(this.value);

  factory PetStatus.fromJson(String json) => switch (json) {
    'available' => available,
    'pending' => pending,
    'sold' => sold,
    _ => PetStatus._(json),  // Preserves unknown values
  };

  String toJson() => value;
  bool get isUnknown => !values.contains(this);
}
```

### Extension Types (Branded Primitives)

Named primitive schemas (e.g., `UserId` as a `string` with `format: uuid`) generate zero-cost Dart extension types:

```dart
extension type const UserId(String value) {
  factory UserId.fromJson(String json) => UserId(json);
  String toJson() => value;
}
```

This provides compile-time type safety without runtime overhead. You can't accidentally pass a `String` where a `UserId` is expected. Types with formats like `date-time`, `uri`, and `int32` automatically parse/serialize:

```dart
extension type Timestamp(DateTime value) {
  factory Timestamp.fromJson(String json) => Timestamp(DateTime.parse(json));
  String toJson() => value.toIso8601String();
}
```

### Untagged Unions (oneOf)

`oneOf` schemas with 2-9 variants generate lightweight type aliases using generic `OneOf` containers from `degenerate_runtime`:

```dart
// Generated: typedef Notification = OneOf2<EmailDetails, SmsDetails>;

// Pattern match on the union value
void handleNotification(Notification notification) {
  switch (notification.value) {
    case EmailDetails email:
      print('Email to ${email.to}');
    case SmsDetails sms:
      print('SMS to ${sms.phone}');
  }
}

// Create a union value — three equivalent ways:
final n1 = Notification.from(EmailDetails(to: 'a@b.com', subject: 'Hi'));
final n2 = Notification.a(EmailDetails(to: 'a@b.com', subject: 'Hi'));
final n3 = OneOf2.a(EmailDetails(to: 'a@b.com', subject: 'Hi'));

// With Dart's implicit context syntax, named parameters are concise:
await sdk.chat.createCompletion(
  body: CreateCompletionRequest(
    model: .b(.gpt4oMini),       // OneOf2<String, ModelIds>.b(ModelIds.gpt4oMini)
    messages: [message],
  ),
);
```

Named constructors `.a()`, `.b()`, `.c()` etc. wrap a specific variant. `.from()` selects the variant by runtime type. Pattern matching on `.value` gives you type checking.

### Overlapping Unions (anyOf)

An `anyOf` value can match several schemas at once. Generated classes expose
each variant as an `Omittable` typed view and preserve the decoded JSON,
including unknown properties and unknown future shapes:

```dart
// Combined declares anyOf: [A, B].
final combined = Combined.fromJson({'a': 'first', 'b': 'second', 'future': 42});
print(combined.a.value);
print(combined.b.value);
print(combined.toJson()); // includes a, b, and future

final created = Combined(a: Omittable(A(a: 'first')), b: Omittable(B(b: 'second')));
print(created.toJson()); // merges both object views
```

`isValid` reports whether a known variant matched; `isUnknown` identifies a
decoded value with no matching view. Decoded values serialize their original
`rawValue`. Caller-created values merge their present views; conflicting wire
values or no present views throw `StateError` when serialized.

### Discriminated Unions

`oneOf` (or `anyOf`, when every variant is a `$ref`) with `discriminator` generates a `sealed class` hierarchy with an unknown variant:

```dart
sealed class Shape {
  String get type;
  factory Shape.fromJson(Map<String, dynamic> json) => switch (json['type']) {
    'circle' => ShapeCircle.fromJson(json),
    'square' => ShapeSquare.fromJson(json),
    _ => Shape$Unknown(json),  // Forward-compatible
  };
  bool get isUnknown => this is Shape$Unknown;
}
```

### API Client

Each tag in the spec generates an API class. The root SDK facade provides lazy accessors for each group:

```dart
final sdk = PetstoreApi(ApiConfig(client: myHttpClient));

// Access API groups via the SDK facade
final result = await sdk.pet.getPetById(petId: 1);
switch (result) {
  case ApiSuccess(:final data):
    print('Found: ${data.name}');
  case ApiError(:final statusCode):
    print('Error: $statusCode');
  case ApiException(:final exception):
    print('Network error: $exception');
}
```

## Streaming

Operations with `text/event-stream` (SSE) or `application/jsonl` (JSONL) responses generate a streaming variant that returns `Stream<T>`:

```dart
// SSE streaming (e.g. OpenAI chat completions)
try {
  await for (final event in sdk.chat.createChatCompletionStream(body: req)) {
    stdout.write(event.choices.first.delta.content ?? '');
  }
} on ApiStreamError catch (e) {
  print('Error ${e.statusCode}: ${e.rawError}');
}
```

When the spec declares `itemSchema` on the media type, each event is deserialized as the typed schema. Interceptors (auth, logging, etc.) are applied to streaming requests.

## Middleware

Interceptors use an OkHttp-style chain where each interceptor receives the request and a `next` handler. This enables retry, auth refresh, logging, and any custom logic:

```dart
abstract interface class Interceptor {
  Future<StreamedApiResponse> intercept(ApiRequest request, Handler next);
}
```

### Built-in Interceptors

The chain receives actual response headers and status for buffered and streaming
operations. Response bodies are single-use streams: call `discard()` before
retrying, or `toApiResponse()` to buffer one deliberately. An interceptor that
reads a body and then forwards it must return
`StreamedApiResponse.fromResponse(bufferedResponse)` so downstream code can read
it. The same factory supports cached responses without calling `next`.

**RetryInterceptor**: exponential backoff with jitter on 429, 5xx, and network
exceptions. By default, only GET, HEAD, OPTIONS, TRACE, PUT, and DELETE are
retried. Use `shouldRetryRequest` to override the method policy; `retryWhen`
only controls which response statuses trigger a retry. `Retry-After` is honored,
and `maxDelay` can cap the wait:

```dart
RetryInterceptor(
  maxRetries: 3,
  initialDelay: Duration(seconds: 1),
  retryWhen: (response) => response.statusCode >= 500,  // custom condition
)
```

**AuthInterceptor**: adds auth headers with optional token refresh on 401:

```dart
AuthInterceptor(
  getToken: () async => myTokenStore.accessToken,
  refreshToken: () async {
    await myTokenStore.refresh();
    return myTokenStore.accessToken;
  },
  scheme: 'Bearer',  // default
)
```

**LoggingInterceptor**: logs requests and responses:

```dart
LoggingInterceptor()  // prints to stdout by default
LoggingInterceptor(logger: myLogger.info)  // custom logger
```

### Custom Interceptors

```dart
class TimingInterceptor implements Interceptor {
  @override
  Future<StreamedApiResponse> intercept(ApiRequest request, Handler next) async {
    final sw = Stopwatch()..start();
    final response = await next(request);
    print('${request.method} ${request.path} took ${sw.elapsedMilliseconds}ms');
    return response;
  }
}
```

Interceptors execute in order. The first interceptor in the list is the outermost wrapper:

```dart
ApiConfig(
  client: client,
  interceptors: [
    LoggingInterceptor(),    // 1. logs the request
    RetryInterceptor(maxRetries: 3), // 2. retries the downstream chain
    AuthInterceptor(                // 3. obtains a token for each attempt
      getToken: () async => myTokenStore.accessToken,
    ),
  ],
)
```

## Cancel Tokens & Per-Request Options

Every generated method accepts an optional `RequestOptions` for per-request overrides:

```dart
// Cancel a request (closes the socket immediately in both http and dio adapters)
final token = CancelToken();
final result = await sdk.pet.listPets(
  options: RequestOptions(cancelToken: token),
);
// From another isolate, timer, or UI callback:
token.cancel();

// Per-request timeout (overrides ApiConfig.timeout)
final result = await sdk.pet.getPetById(
  petId: 1,
  options: RequestOptions(timeout: Duration(seconds: 5)),
);

// Extra headers for a single request
final result = await sdk.pet.listPets(
  options: RequestOptions(extraHeaders: {'X-Request-Id': 'abc-123'}),
);
```

Cancel tokens work at the socket level. Both adapters abort the underlying connection rather than just abandoning the future. A cancelled request surfaces as `ApiException(CancelledException())`. A timed-out request surfaces as `ApiException(TimeoutException(...))`.

## State Management

Generated models are designed to work well with Riverpod, Bloc, and other Flutter state management solutions: immutable `final class` with `const` constructors, `==`/`hashCode` for change detection, `copyWith` for state updates, and `toJson`/`fromJson` for cache persistence.

### dataOrThrow

Every `ApiResult` has a `dataOrThrow` getter that returns the success data or throws. This bridges the gap between `ApiResult` and `AsyncValue`:

```dart
@riverpod
Future<List<Pet>> pets(Ref ref) async {
  final result = await ref.watch(sdkProvider).pet.listPets();
  return result.dataOrThrow;
}
```

On `ApiError`, it throws the error itself (which implements `Exception` and carries `statusCode` and typed `error`). On `ApiException`, it rethrows the original exception with its stack trace preserved.

### Cancellation with Riverpod

Wire a `CancelToken` to `ref.onDispose` so in-flight requests are cancelled when the provider is disposed (e.g. user navigates away):

```dart
@riverpod
Future<List<Pet>> pets(Ref ref) async {
  final token = CancelToken();
  ref.onDispose(token.cancel);

  final result = await ref.watch(sdkProvider).pet.listPets(
    options: RequestOptions(cancelToken: token),
  );
  return result.dataOrThrow;
}
```

### Error handling

`ApiError` implements `Exception`, so Riverpod surfaces it through `AsyncValue.error`. You can inspect the status code and typed error in your UI:

```dart
ref.watch(petsProvider).when(
  data: (pets) => PetList(pets),
  loading: () => CircularProgressIndicator(),
  error: (error, stack) => switch (error) {
    ApiError(:final statusCode) => Text('Server error: $statusCode'),
    _ => Text('Something went wrong'),
  },
);
```

### Granular rebuilds

Generated models implement `==` and `hashCode`, so Riverpod's `select()` works out of the box to prevent unnecessary widget rebuilds:

```dart
// Only rebuilds when the pet's name changes
final name = ref.watch(petProvider.select((pet) => pet.name));
```

## Tested Specs

| Spec | Status |
|------|--------|
| Petstore (3.0) | 0 issues |
| Twilio | 0 issues |
| Shopify | 0 issues |
| Kubernetes (JSON) | 0 issues |
| Totem Mobile (3.1) | 0 issues |
| OpenAI | 0 issues |
| GitHub REST 3.1 | 0 issues |
| Cloudflare | 0 issues |
| Stripe | 0 issues |
| Unhinged (3.2 edge cases) | 0 issues |

## Limitations

- **Swagger 2.0** is not supported; only OpenAPI 3.0+ (3.0, 3.1, and 3.2 features are supported)
- **Remote `$ref` URLs** (e.g., `$ref: 'https://...'`) are not resolved; only local filesystem refs are supported

## License

MIT
