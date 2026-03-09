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
    Generates type-safe Dart clients from OpenAPI specs with full <code>dart analyze</code> compliance,<br>
    forward-compatible enums and unions, and an OkHttp-style middleware chain.
  </p>
</div>

---

## Features

- **Full OpenAPI 3.0 and 3.1 support** including `allOf`, `oneOf`, `anyOf`, discriminated unions, nullable types, and circular references
- **Forward-compatible** — unknown enum values preserve their raw string for round-trip fidelity; unknown union discriminators produce typed `$Unknown` variants
- **Zero analysis issues** — generated code passes `dart analyze` with no errors, warnings, or hints
- **Fast** — generates 14,580 files from the Cloudflare spec in ~6 seconds (AOT compiled)
- **Pluggable HTTP** — bring your own HTTP client via `degenerate_http` (package:http) or `degenerate_dio` (package:dio), or implement the `ApiClient` interface
- **OkHttp-style middleware** — single `intercept(request, next)` pattern with built-in retry, auth, and logging interceptors
- **Modular output** — one file per model/enum/union, barrel file for convenient imports

## Quick Start

```bash
# Generate a client from a spec
dart run bin/degenerate.dart -i petstore.yaml -o my_client -n petstore

# Install dependencies in the generated package
cd my_client && dart pub get
```

Then use the generated client:

```dart
import 'package:degenerate_http/degenerate_http.dart';
import 'package:petstore/petstore.dart';

void main() async {
  final client = HttpApiClient(
    baseUrl: Uri.parse('https://petstore3.swagger.io/api/v3'),
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
    case ApiError(:final statusCode, :final rawBody):
      print('Error $statusCode: $rawBody');
    case ApiException(:final exception):
      print('Network error: $exception');
  }

  await client.close();
}
```

See [`example/`](example/) for a full working example against the live Petstore API.

## Usage

```
degenerate [options]

Options:
  -i, --input              Path to OpenAPI spec (required)
  -o, --output             Output directory (default: lib/src/generated)
  -n, --name               Package name (default: inferred from spec title)
      --client             HTTP client adapter: http|none (default: http)
      --include-deprecated  Include deprecated operations
      --clean              Remove output directory before generating
  -v, --verbose            Print IR and diagnostics
      --dry-run            Parse and validate without writing files
  -h, --help               Show help
      --version            Print the tool version
```

### Examples

```bash
# Generate from a YAML spec
degenerate -i petstore.yaml -o lib/src/api -n petstore

# Generate from a JSON spec with verbose output
degenerate -i kubernetes-api.json -o lib/src/k8s --verbose

# Clean output directory before generating (removes stale files)
degenerate -i spec.yaml -o lib/src/api --clean

# Dry run to check for issues without writing files
degenerate -i spec.yaml --dry-run

# Generate without HTTP client (bring your own ApiClient implementation)
degenerate -i spec.yaml --client none
```

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

## Generated Output

```
lib/
  <package_name>.dart          Barrel file (exports everything)
  src/
    models/
      pet.dart                 Data classes with fromJson/toJson/copyWith/==/hashCode
      pet_status.dart          Enum-like class with unknown value preservation
      shape.dart               Sealed class for discriminated unions
    apis/
      pets_api.dart            API client class with typed methods
    client/
      <package_name>_api.dart  Root SDK facade with lazy API group accessors
pubspec.yaml                   Generated with correct dependencies
```

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

**RetryInterceptor** — exponential backoff on 429 and 5xx:

```dart
RetryInterceptor(
  maxRetries: 3,
  initialDelay: Duration(seconds: 1),
  retryWhen: (response) => response.statusCode >= 500,  // custom condition
)
```

**AuthInterceptor** — adds auth headers with optional token refresh on 401:

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

**LoggingInterceptor** — logs requests and responses:

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

Interceptors execute in order — the first interceptor in the list is the outermost wrapper:

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

## Architecture

```
bin/degenerate.dart          CLI entry point
lib/src/
  generator.dart             Pipeline orchestrator
  naming.dart                PascalCase/camelCase/sanitize/deduplicate
  ir/ir_types.dart           All IR types (sealed classes, enums)
  parser/openapi_document.dart   YAML/JSON parsing
  normalizer/
    allof_flattener.dart     Merge allOf compositions
  lowering/
    type_lowerer.dart        OpenAPI schemas -> IR types
    operation_lowerer.dart   OpenAPI paths/ops -> IR operations
  emitter/
    emit_utils.dart          Shared code gen utilities
    model_emitter.dart       IrObject -> final class
    enum_emitter.dart        IrEnum -> final class with static const instances
    sealed_union_emitter.dart  Unions -> sealed class hierarchies
    api_emitter.dart         IrApi -> API client class
    file_emitter.dart        Orchestrates all emitters

packages/
  degenerate_runtime/        Core interfaces, middleware chain, interceptors
  degenerate_http/           package:http adapter
  degenerate_dio/            package:dio adapter
```

The pipeline is: **Parse** (YAML/JSON) -> **Lower** (schemas to IR, with inline allOf flattening and $ref resolution) -> **Emit** (IR to Dart via code_builder) -> **Write**. Generated files include `// dart format off` to prevent reformatting.

## Tested Specs

| Spec | Files | Status |
|------|-------|--------|
| Petstore (3.0) | 119 | 0 issues |
| Twilio (35k lines) | 35,821 | 0 issues |
| Shopify (50k lines) | 49,950 | 0 issues |
| Kubernetes (39k lines, JSON) | 39,336 | 0 issues |
| Totem Mobile (3.1) | ~4k | 0 issues |
| OpenAI | 2,317 | 0 issues |
| GitHub REST 3.1 | 6,401 | 0 issues |
| Cloudflare | 14,580 | 0 issues |

## Limitations

- **Swagger 2.0** is not supported; only OpenAPI 3.0 and 3.1
- **External `$ref` files** (e.g., `$ref: './other.yaml'`) are not resolved

## License

MIT
