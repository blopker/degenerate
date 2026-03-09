<div align="center">
  <img src="assets/degenerate.webp" alt="degenerate" width="400">
  <h1>degenerate</h1>
  <p><strong>A fast, opinionated OpenAPI 3.x to Dart code generator.</strong></p>
  <p>
    <a href="#features">Features</a> &middot;
    <a href="#installation">Installation</a> &middot;
    <a href="#usage">Usage</a> &middot;
    <a href="#tested-specs">Tested Specs</a>
  </p>
  <p>
    Generates type-safe Dart clients from OpenAPI specs with full <code>dart analyze</code> compliance,<br>
    forward-compatible enums and unions, and zero runtime dependencies beyond <code>package:http</code>.
  </p>
</div>

---

## Features

- **Full OpenAPI 3.0 and 3.1 support** including `allOf`, `oneOf`, `anyOf`, discriminated unions, nullable types, and circular references
- **Forward-compatible** — unknown enum values preserve their raw string for round-trip fidelity; unknown union discriminators produce typed `$Unknown` variants
- **Zero analysis issues** — generated code passes `dart analyze` with no errors, warnings, or hints
- **Fast** — generates 14,580 files from the Cloudflare spec in ~6 seconds (AOT compiled)
- **Modular output** — one file per model/enum/union, barrel file for convenient imports

## Installation

```bash
dart pub global activate --source path .
```

Or run directly:

```bash
dart run bin/degenerate.dart --input spec.yaml --output lib/src/generated
```

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
      api_client.dart          Abstract ApiClient interface
      api_config.dart          Configuration (interceptors, headers, timeout)
      api_result.dart          Sealed ApiResult<T> (ApiSuccess | ApiError | ApiException)
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

Each tag in the spec generates an API class:

```dart
final api = PetsApi(ApiConfig(client: myHttpClient));
final result = await api.listPets(limit: 10);
switch (result) {
  case ApiSuccess(:final data):
    print('Got ${data.length} pets');
  case ApiError(:final statusCode):
    print('Error: $statusCode');
  case ApiException(:final exception):
    print('Network error: $exception');
}
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
```

The pipeline is: **Parse** (YAML/JSON) -> **Lower** (schemas to IR, with inline allOf flattening and $ref resolution) -> **Emit** (IR to Dart via code_builder) -> **Write**. Generated files include `// dart format off` to prevent reformatting.

## Tested Specs

| Spec | Files | Status |
|------|-------|--------|
| Petstore (3.0) | 119 | ✅ 0 issues |
| Twilio (35k lines) | 35,821 | ✅ 0 issues |
| Shopify (50k lines) | 49,950 | ✅ 0 issues |
| Kubernetes (39k lines, JSON) | 39,336 | ✅ 0 issues |
| Totem Mobile (3.1) | ~4k | ✅ 0 issues |
| OpenAI | 2,317 | ✅ 0 issues |
| GitHub REST 3.1 | 6,401 | ✅ 0 issues |
| Cloudflare | 14,580 | ✅ 0 issues |

## Limitations

- **Swagger 2.0** is not supported; only OpenAPI 3.0 and 3.1
- **External `$ref` files** (e.g., `$ref: './other.yaml'`) are not resolved
- No concrete `HttpApiClient` adapter is emitted yet — you must implement `ApiClient` yourself (or wait for the next release)
- `--client dio` is not yet implemented; use `--client http` or `--client none` with your own adapter

## License

MIT
