<div align="center">
  <img src="assets/degenerate.webp" alt="degenerate" width="400">
  <h1>degenerate</h1>
  <p><strong>A fast, opinionated OpenAPI 3.x to Dart code generator.</strong></p>
  <p>
    <a href="#features">Features</a> &middot;
    <a href="#quick-start">Quick Start</a> &middot;
    <a href="#usage">Usage</a> &middot;
    <a href="#middleware">Middleware</a> &middot;
    <a href="#tested-specs">Tested Specs</a>
  </p>
  <p>
    A Dart OpenAPI client generator that actually works on real-world specs. Zero analysis issues<br>
    on Stripe, GitHub, Kubernetes, and 9 others, with no manual fixups. Production-ready batteries included.
  </p>
</div>

---

## Features

- **Strives for full OpenAPI 3.0 and 3.1 compatibility** including `allOf`, `oneOf`, `anyOf`, discriminated unions, nullable types, circular references, and external `$ref` file resolution. [File a bug](https://github.com/blopker/degenerate/issues) if something doesn't work
- **Forward-compatible**: unknown enum values preserve their raw string for round-trip fidelity; unknown union discriminators produce typed `$Unknown` variants
- **Lightweight unions**: `oneOf`/`anyOf` schemas emit `typedef` aliases over generic `OneOf` containers with pattern matching support, avoiding heavy sealed class hierarchies
- **Zero analysis issues**: generated code passes default `dart analyze` with no errors, warnings, or hints
- **Fast**: generates ~12,000 files from the Cloudflare spec in ~6 seconds (AOT compiled)
- **Tag & path filtering**: generate only the APIs you need with `--tag` and `--path`; unused types are automatically tree-shaken
- **Multi-format request/response**: JSON, text, binary, multipart/form-data, and form-urlencoded bodies with media-type-aware serialization
- **Pluggable HTTP**: bring your own HTTP client via `degenerate_http` (package:http) or `degenerate_dio` (package:dio), or implement the `ApiClient` interface
- **Cancel tokens & per-request options**: cancel in-flight requests at the socket level, override timeout/headers per call
- **OkHttp-style middleware**: single `intercept(request, next)` pattern with built-in retry, auth, and logging interceptors
- **Modular output**: one file per model, small types inlined into their parent, barrel file for convenient imports

## Quick Start

```yaml
# Add to your pubspec.yaml
dev_dependencies:
  degenerate: ^0.1.0
```

```bash
# Generate a client from a spec
dart run degenerate -i petstore.yaml -o lib/src/generated -n petstore
```

Then use the generated client:

```dart
import 'package:degenerate_http/degenerate_http.dart';
import 'package:petstore/petstore.dart';

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

See [`example/`](example/) for a full working example against the live Petstore API.

## Usage

```
dart run degenerate [options]

Options:
  -i, --input              Path to OpenAPI spec (required)
  -o, --output             Output directory (default: lib/src/generated)
  -n, --name               Package name (default: inferred from spec title)
  -t, --tag                Only include APIs matching these tags (repeatable)
  -p, --path               Only include operations under these path prefixes (repeatable)
      --include-deprecated  Include deprecated operations
      --clean              Remove output directory before generating
      --workspace          Add resolution: workspace to generated pubspec (for monorepos)
  -v, --verbose            Print IR and diagnostics
      --dry-run            Parse and validate without writing files
  -h, --help               Show help
      --version            Print the tool version
```

### Examples

```bash
# Generate from a YAML spec
dart run degenerate -i petstore.yaml -o lib/src/api -n petstore

# Only generate DNS-related APIs from a large spec
dart run degenerate -i cloudflare.yaml -o lib/src/api -t dns

# Multiple tags
dart run degenerate -i cloudflare.yaml -o lib/src/api -t dns -t workers

# Filter by path prefix
dart run degenerate -i cloudflare.yaml -o lib/src/api -p /zones

# Generate from a JSON spec with verbose output
dart run degenerate -i kubernetes-api.json -o lib/src/k8s --verbose

# Clean output directory before generating (removes stale files)
dart run degenerate -i spec.yaml -o lib/src/api --clean

# Dry run to check for issues without writing files
dart run degenerate -i spec.yaml --dry-run

```

Tag matching is case-insensitive and ignores spaces, underscores, and hyphens. When tags or paths are specified, unused types are automatically tree-shaken from the output.

## Packages

The runtime is split into separate packages so generated code has no opinion on which HTTP client you use:

| Package | Purpose | Dependencies |
|---------|---------|-------------|
| `degenerate_runtime` | Core interfaces (`ApiClient`, `ApiConfig`, `ApiResult`), middleware chain, built-in interceptors | None |
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
import 'package:petstore/petstore.dart';

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

```
lib/
  <package_name>.dart          Barrel file (exports everything)
  src/
    models/
      pet.dart                 Data classes with fromJson/toJson/copyWith/==/hashCode
      pet_status.dart          Enum-like class with unknown value preservation
      user_id.dart             Extension type for branded primitives
      pet_or_error.dart        OneOf typedef for untagged unions
      shape.dart               Sealed class for discriminated unions
    apis/
      pets_api.dart            API client class with typed methods
    client/
      <package_name>_api.dart  Root SDK facade with lazy API group accessors
pubspec.yaml                   Generated with correct dependencies
```

Small types (extension types and enums) referenced by a single parent are automatically inlined into the parent's file to reduce file count.

### Data Classes

Each schema with `properties` generates a `final class` with:

- `const` constructor with named parameters
- `factory fromJson(Map<String, dynamic>)` for deserialization
- `toJson()` returning `Map<String, dynamic>`
- `copyWith()` with nullable callbacks for optional fields
- Value equality (`==` and `hashCode`)
- `toString()` with all fields

### Enums

String enums generate a `final class` with static const instances. Unknown server values are preserved via the raw `value` field, enabling round-trip fidelity:

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

### Untagged Unions (oneOf / anyOf)

`oneOf` and `anyOf` schemas with 2-9 variants generate lightweight type aliases using generic `OneOf` containers from `degenerate_runtime`:

```dart
// Generated: typedef Notification = OneOf2<EmailDetails, SmsDetails>;

// Pattern match on the union value
void handleNotification(Notification notification) {
  switch (notification.value) {
    case EmailDetails email => print('Email to ${email.to}'),
    case SmsDetails sms => print('SMS to ${sms.phone}'),
  }
}

// Create a union value to pass to an API call
final notification = Notification.from(
  EmailDetails(to: 'user@example.com', subject: 'Hello'),
);
await sdk.notifications.send(body: notification);
```

Since `Notification` is a type alias, `.from()` validates at runtime that the value matches one of the expected types. Pattern matching on `.value` gives you exhaustive type checking.

### Discriminated Unions

`oneOf` with `discriminator` generates a `sealed class` hierarchy with an unknown variant:

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

## Middleware

Interceptors use an OkHttp-style chain where each interceptor receives the request and a `next` handler. This enables retry, auth refresh, logging, and any custom logic:

```dart
abstract interface class Interceptor {
  Future<ApiResponse> intercept(ApiRequest request, Handler next);
}
```

### Built-in Interceptors

**RetryInterceptor**: exponential backoff on 429 and 5xx:

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
  Future<ApiResponse> intercept(ApiRequest request, Handler next) async {
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
    AuthInterceptor(...),    // 2. adds auth header
    RetryInterceptor(...),   // 3. retries on failure (retries include auth)
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

## Limitations

- **Swagger 2.0** is not supported; only OpenAPI 3.0 and 3.1
- **Remote `$ref` URLs** (e.g., `$ref: 'https://...'`) are not resolved; only local filesystem refs are supported

## License

MIT
