# WARNING: OUTDATED

# Dartgen: OpenAPI → Dart Client Generator

## Design Specification v0.1

---

## 1. Architecture Overview

```
┌─────────────┐    ┌──────────────┐    ┌─────────────┐    ┌──────────────┐    ┌────────────┐
│  OpenAPI     │───▶│  Normalizer  │───▶│     IR      │───▶│  Dart AST    │───▶│  dart_style │
│  JSON/YAML  │    │  & Resolver   │    │  (Typed)    │    │  Emitter     │    │  Formatter  │
└─────────────┘    └──────────────┘    └─────────────┘    └──────────────┘    └────────────┘
                         │                    │                   │
                    Validates,           Language-           Uses code_builder
                    resolves $ref,       agnostic            to construct AST
                    flattens allOf,      model of            nodes, then
                    detects unions       types, ops,         dart_style to
                                         clients             format output
```

### Pipeline Stages

1. **Parse** — Read OpenAPI 3.0/3.1 JSON or YAML into an in-memory document model.
2. **Normalize** — Resolve all `$ref` pointers, flatten `allOf` compositions, detect circular references, canonicalize schema names.
3. **Lower to IR** — Transform normalized schemas and operations into a typed, Dart-unaware intermediate representation.
4. **Emit Dart AST** — Walk the IR and construct Dart source via `package:code_builder` specs.
5. **Format & Write** — Pipe all specs through `package:dart_style` and write to disk.

### Key Dependencies

| Package | Purpose |
|---------|---------|
| `yaml` | Parse YAML specs |
| `code_builder` ^4.x | Programmatic Dart AST construction |
| `dart_style` ^2.x | Official Dart formatter |
| `args` | CLI argument parsing |
| `path` | Cross-platform path manipulation |

**Not used:** `build_runner`, `source_gen`, `analyzer` (we are *generating* code, not analyzing existing Dart). `code_builder` gives us typed spec objects that produce syntactically valid Dart without touching the analyzer's AST.

---

## 2. Intermediate Representation (IR)

The IR is the heart of the system. Every OpenAPI construct maps to exactly one IR node. The IR is fully resolved — no `$ref` strings, no ambiguity.

```dart
// ─── Type IR ───────────────────────────────────────────────

/// Root of all type representations in the IR.
sealed class IrType {
  final String? description;
  final bool isNullable;
  const IrType({this.description, this.isNullable = false});
}

final class IrPrimitive extends IrType {
  final PrimitiveKind kind; // string, int, double, bool, dateTime, uri, bigInt, duration
  final String? format;     // original OpenAPI format for pass-through
  const IrPrimitive(this.kind, {this.format, super.description, super.isNullable});
}

final class IrEnum extends IrType {
  final String name;
  final List<String> values;
  final String? defaultValue;
  const IrEnum(this.name, this.values, {this.defaultValue, super.description, super.isNullable});
}

final class IrList extends IrType {
  final IrType items;
  const IrList(this.items, {super.description, super.isNullable});
}

final class IrMap extends IrType {
  final IrType values; // keys are always String in OpenAPI
  const IrMap(this.values, {super.description, super.isNullable});
}

final class IrObject extends IrType {
  final String name;
  final List<IrField> fields;
  final List<String> requiredFields;
  const IrObject(this.name, this.fields, {this.requiredFields = const [], super.description, super.isNullable});
}

final class IrField {
  final String name;
  final String originalName; // JSON key, may differ from Dart name
  final IrType type;
  final bool isRequired;
  final Object? defaultValue;
  final String? description;
  const IrField(this.name, this.originalName, this.type, {this.isRequired = false, this.defaultValue, this.description});
}

/// oneOf with discriminator — generates sealed class hierarchy.
final class IrDiscriminatedUnion extends IrType {
  final String name;
  final String discriminatorProperty;
  final Map<String, IrType> mapping; // discriminator value → variant type
  const IrDiscriminatedUnion(this.name, this.discriminatorProperty, this.mapping, {super.description, super.isNullable});
}

/// oneOf without discriminator — generates sealed class with runtime matching.
final class IrUntaggedUnion extends IrType {
  final String name;
  final List<IrType> variants;
  const IrUntaggedUnion(this.name, this.variants, {super.description, super.isNullable});
}

/// anyOf — generates a composite that can be multiple types simultaneously.
final class IrAnyOf extends IrType {
  final String name;
  final List<IrType> variants;
  const IrAnyOf(this.name, this.variants, {super.description, super.isNullable});
}

/// A reference to a named type (resolved during IR construction).
final class IrTypeRef extends IrType {
  final String name;
  const IrTypeRef(this.name, {super.description, super.isNullable});
}

// ─── Operation IR ──────────────────────────────────────────

final class IrApi {
  final String name; // tag-based grouping → class name
  final List<IrOperation> operations;
  const IrApi(this.name, this.operations);
}

final class IrOperation {
  final String operationId;
  final String dartMethodName;
  final HttpMethod method;
  final String path;
  final String? summary;
  final String? description;
  final List<IrParameter> parameters;
  final IrRequestBody? requestBody;
  final Map<int, IrResponse> responses; // status code → response
  final IrResponse? defaultResponse;
  final bool isDeprecated;
  const IrOperation(this.operationId, this.dartMethodName, this.method, this.path, {
    this.summary, this.description, this.parameters = const [],
    this.requestBody, this.responses = const {}, this.defaultResponse,
    this.isDeprecated = false,
  });
}

final class IrParameter {
  final String name;
  final String dartName;
  final ParameterLocation location; // path, query, header, cookie
  final IrType type;
  final bool isRequired;
  final Object? defaultValue;
  const IrParameter(this.name, this.dartName, this.location, this.type, {this.isRequired = false, this.defaultValue});
}

final class IrRequestBody {
  final Map<String, IrMediaType> content; // media type → schema
  final bool isRequired;
  const IrRequestBody(this.content, {this.isRequired = false});
}

final class IrMediaType {
  final IrType schema;
  final String? encoding;
  const IrMediaType(this.schema, {this.encoding});
}

final class IrResponse {
  final String? description;
  final Map<String, IrMediaType> content;
  final List<IrField> headers;
  const IrResponse({this.description, this.content = const {}, this.headers = const []});
}

enum HttpMethod { get, post, put, patch, delete, head, options, trace }
enum ParameterLocation { path, query, header, cookie }
enum PrimitiveKind { string, int, double, num, bool, dateTime, uri, bigInt, duration, bytes }
```

---

## 3. Schema Normalization

The normalizer runs before IR construction and handles the messy reality of OpenAPI specs.

### 3.1 `$ref` Resolution

```
// Resolve chain:  $ref → $ref → $ref → concrete
// Detect cycles:  $ref → ... → $ref (back to start) → mark as IrTypeRef, break
// Inline:         Replace $ref node with resolved schema, preserve original name
```

**Circular reference strategy:** When a cycle is detected, emit `IrTypeRef(name)` pointing to the named type. The emitter will generate a forward reference (the type is already being emitted or will be emitted). In Dart, class fields can reference their own type with no issue.

### 3.2 `allOf` Flattening

```yaml
# Input
allOf:
  - $ref: '#/components/schemas/Base'
  - type: object
    properties:
      extra: { type: string }
```

**Strategy:** Merge all schemas into a single `IrObject`. Fields from later schemas override earlier ones. Required lists are unioned. This is pure composition — Dart doesn't need inheritance here.

If `allOf` contains a `discriminator`, promote to `IrDiscriminatedUnion` instead.

### 3.3 `oneOf` / `anyOf` Detection

| Pattern | IR Node | Dart Output |
|---------|---------|-------------|
| `oneOf` + `discriminator` | `IrDiscriminatedUnion` | `sealed class` + subtypes |
| `oneOf` without discriminator | `IrUntaggedUnion` | `sealed class` + runtime parse attempts |
| `anyOf` | `IrAnyOf` | Composite class with nullable fields per variant |
| `oneOf` where all variants are primitives | `IrEnum` or Dart typedef | Simple union type |

### 3.4 Name Canonicalization

```
PetStore_api_v2_Pet → Pet
get_/pets/{petId} → getPet
__my__weird__name__ → myWeirdName
HTTPSConnection → httpsConnection
```

Rules:
1. Strip path prefixes and version segments.
2. PascalCase for types, camelCase for methods/fields.
3. Collapse consecutive underscores/hyphens.
4. Prefix with `$` if the result is a Dart reserved word.
5. Deduplicate: if `Pet` already exists, try `PetV2`, `Pet1`, etc.
6. Preserve original JSON name in `IrField.originalName` for serialization.

---

## 4. Union Type Strategies — The Hard Part

This is where existing Dart generators fall apart. We use Dart 3's sealed classes, exhaustive pattern matching, and extension types to produce genuinely idiomatic output.

### 4.1 Discriminated Union (`oneOf` + `discriminator`)

**OpenAPI input:**
```yaml
components:
  schemas:
    Shape:
      oneOf:
        - $ref: '#/components/schemas/Circle'
        - $ref: '#/components/schemas/Rectangle'
        - $ref: '#/components/schemas/Triangle'
      discriminator:
        propertyName: type
        mapping:
          circle: '#/components/schemas/Circle'
          rectangle: '#/components/schemas/Rectangle'
          triangle: '#/components/schemas/Triangle'
    Circle:
      type: object
      required: [type, radius]
      properties:
        type: { type: string }
        radius: { type: number }
    Rectangle:
      type: object
      required: [type, width, height]
      properties:
        type: { type: string }
        width: { type: number }
        height: { type: number }
    Triangle:
      type: object
      required: [type, base, height]
      properties:
        type: { type: string }
        base: { type: number }
        height: { type: number }
```

**Generated Dart:**
```dart
/// A shape.
sealed class Shape {
  const Shape();

  /// The discriminator value identifying this variant.
  String get type;

  /// Deserialize from JSON, dispatching on the `type` discriminator.
  factory Shape.fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'circle'    => ShapeCircle.fromJson(json),
      'rectangle' => ShapeRectangle.fromJson(json),
      'triangle'  => ShapeTriangle.fromJson(json),
      final String unknown => throw FormatException(
        'Unknown Shape discriminator: "$unknown"',
        json,
      ),
      _ => throw FormatException(
        'Missing "type" discriminator in Shape JSON',
        json,
      ),
    };
  }

  Map<String, dynamic> toJson();
}

final class ShapeCircle extends Shape {
  @override
  String get type => 'circle';
  final double radius;

  const ShapeCircle({required this.radius});

  factory ShapeCircle.fromJson(Map<String, dynamic> json) => ShapeCircle(
    radius: (json['radius'] as num).toDouble(),
  );

  @override
  Map<String, dynamic> toJson() => {
    'type': type,
    'radius': radius,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShapeCircle && radius == other.radius;

  @override
  int get hashCode => Object.hash(runtimeType, radius);

  @override
  String toString() => 'ShapeCircle(radius: $radius)';
}

final class ShapeRectangle extends Shape {
  @override
  String get type => 'rectangle';
  final double width;
  final double height;

  const ShapeRectangle({required this.width, required this.height});

  factory ShapeRectangle.fromJson(Map<String, dynamic> json) => ShapeRectangle(
    width: (json['width'] as num).toDouble(),
    height: (json['height'] as num).toDouble(),
  );

  @override
  Map<String, dynamic> toJson() => {
    'type': type,
    'width': width,
    'height': height,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShapeRectangle && width == other.width && height == other.height;

  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @override
  String toString() => 'ShapeRectangle(width: $width, height: $height)';
}

final class ShapeTriangle extends Shape {
  @override
  String get type => 'triangle';
  final double base;
  final double height;

  const ShapeTriangle({required this.base, required this.height});

  factory ShapeTriangle.fromJson(Map<String, dynamic> json) => ShapeTriangle(
    base: (json['base'] as num).toDouble(),
    height: (json['height'] as num).toDouble(),
  );

  @override
  Map<String, dynamic> toJson() => {
    'type': type,
    'base': base,
    'height': height,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShapeTriangle && base == other.base && height == other.height;

  @override
  int get hashCode => Object.hash(runtimeType, base, height);

  @override
  String toString() => 'ShapeTriangle(base: $base, height: $height)';
}
```

**Consumer usage — exhaustive switch:**
```dart
double area(Shape shape) => switch (shape) {
  ShapeCircle(:final radius)          => 3.14159 * radius * radius,
  ShapeRectangle(:final width, :final height) => width * height,
  ShapeTriangle(:final base, :final height)   => 0.5 * base * height,
};

// Compiler enforces exhaustiveness: adding a new variant to the
// sealed class will produce compile-time errors everywhere a
// switch doesn't handle it.
```

### 4.2 Untagged Union (`oneOf` without `discriminator`)

**OpenAPI input:**
```yaml
components:
  schemas:
    StringOrInt:
      oneOf:
        - type: string
        - type: integer
    PetOrError:
      oneOf:
        - $ref: '#/components/schemas/Pet'
        - $ref: '#/components/schemas/Error'
```

**Strategy:** Since there's no discriminator, we attempt deserialization in declaration order and take the first success. For primitive unions, we use `is` checks.

**Generated Dart:**
```dart
/// A value that is one of: `String`, `int`.
sealed class StringOrInt {
  const StringOrInt();

  /// The underlying raw value.
  Object get value;

  factory StringOrInt.fromJson(Object? json) => switch (json) {
    final String v => StringOrIntString(v),
    final int v    => StringOrIntInt(v),
    _ => throw FormatException(
      'Cannot deserialize StringOrInt from: ${json.runtimeType}',
      json,
    ),
  };

  Object? toJson() => value;
}

final class StringOrIntString extends StringOrInt {
  @override
  final String value;
  const StringOrIntString(this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is StringOrIntString && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'StringOrInt.string($value)';
}

final class StringOrIntInt extends StringOrInt {
  @override
  final int value;
  const StringOrIntInt(this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is StringOrIntInt && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'StringOrInt.int($value)';
}
```

**For complex object unions (`PetOrError`):**
```dart
sealed class PetOrError {
  const PetOrError();

  factory PetOrError.fromJson(Map<String, dynamic> json) {
    // Attempt each variant in declaration order.
    // Use structural heuristics: check for required fields unique to each type.
    if (json.containsKey('name') && json.containsKey('species')) {
      return PetOrErrorPet(Pet.fromJson(json));
    }
    if (json.containsKey('code') && json.containsKey('message')) {
      return PetOrErrorError(ApiError.fromJson(json));
    }
    throw FormatException('Cannot match PetOrError variant', json);
  }

  Map<String, dynamic> toJson();
}

final class PetOrErrorPet extends PetOrError {
  final Pet pet;
  const PetOrErrorPet(this.pet);

  @override
  Map<String, dynamic> toJson() => pet.toJson();
}

final class PetOrErrorError extends PetOrError {
  final ApiError error;
  const PetOrErrorError(this.error);

  @override
  Map<String, dynamic> toJson() => error.toJson();
}
```

**Consumer usage:**
```dart
void handle(PetOrError result) => switch (result) {
  PetOrErrorPet(:final pet) => print('Got pet: ${pet.name}'),
  PetOrErrorError(:final error) => print('Error ${error.code}: ${error.message}'),
};
```

### 4.3 `anyOf` — Composite Types

Unlike `oneOf` (exactly one), `anyOf` means "could match one or more simultaneously."

**OpenAPI input:**
```yaml
components:
  schemas:
    Notification:
      anyOf:
        - $ref: '#/components/schemas/EmailDetails'
        - $ref: '#/components/schemas/SmsDetails'
        - $ref: '#/components/schemas/PushDetails'
```

**Generated Dart:**
```dart
/// A notification that may include any combination of: email, SMS, push details.
final class Notification {
  final EmailDetails? email;
  final SmsDetails? sms;
  final PushDetails? push;

  const Notification({this.email, this.sms, this.push});

  /// At least one variant must be present.
  bool get isValid => email != null || sms != null || push != null;

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
    email: EmailDetails.canParse(json) ? EmailDetails.fromJson(json) : null,
    sms: SmsDetails.canParse(json) ? SmsDetails.fromJson(json) : null,
    push: PushDetails.canParse(json) ? PushDetails.fromJson(json) : null,
  );

  Map<String, dynamic> toJson() => {
    ?...email?.toJson(),
    ?...sms?.toJson(),
    ?...push?.toJson(),
  };
}
```

This uses Dart 3.8's **null-aware spread** (`?...`) to conditionally merge maps.

### 4.4 Primitive Enums from `oneOf`

When all `oneOf` variants are the same primitive type with `const` values, collapse to a Dart `enum`:

```yaml
Status:
  oneOf:
    - const: active
    - const: inactive
    - const: suspended
  type: string
```

**Generated Dart:**
```dart
enum Status {
  active('active'),
  inactive('inactive'),
  suspended('suspended');

  final String value;
  const Status(this.value);

  factory Status.fromJson(String json) => switch (json) {
    'active'    => .active,     // dot shorthand (Dart 3.10)
    'inactive'  => .inactive,
    'suspended' => .suspended,
    _ => throw FormatException('Unknown Status: "$json"'),
  };

  String toJson() => value;
}
```

Note the **dot shorthands** (`.active` instead of `Status.active`) available in Dart 3.10+.

---

## 5. HTTP Client Interface

The generated code never depends on a concrete HTTP client. Instead, it programs against this interface:

```dart
/// The contract any HTTP client must satisfy.
///
/// Implementations are provided for `package:http`, Dio, or any custom client.
/// The generator emits code that only calls these methods.
abstract interface class ApiClient {
  /// Send a request and return a typed response.
  Future<ApiResponse> send(ApiRequest request);

  /// Base URL for all requests. Must not have a trailing slash.
  Uri get baseUrl;

  /// Close/dispose underlying resources.
  Future<void> close();
}

/// An outgoing API request.
final class ApiRequest {
  final String method;
  final String path;
  final Map<String, String> headers;
  final Map<String, String> queryParameters;
  final Object? body;
  final String? contentType;

  const ApiRequest({
    required this.method,
    required this.path,
    this.headers = const {},
    this.queryParameters = const {},
    this.body,
    this.contentType,
  });

  /// Resolve this request against a base URL.
  Uri resolveUri(Uri baseUrl) {
    final resolved = baseUrl.resolve(path);
    return queryParameters.isEmpty
        ? resolved
        : resolved.replace(queryParameters: {
            ...resolved.queryParameters,
            ...queryParameters,
          });
  }
}

/// A raw API response before deserialization.
final class ApiResponse {
  final int statusCode;
  final Map<String, String> headers;
  final String body;

  const ApiResponse({
    required this.statusCode,
    this.headers = const {},
    required this.body,
  });

  /// True if status code is 2xx.
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
}

/// Configuration for the generated API classes.
final class ApiConfig {
  final ApiClient client;
  final List<Interceptor> interceptors;
  final Map<String, String> defaultHeaders;
  final Duration? timeout;

  const ApiConfig({
    required this.client,
    this.interceptors = const [],
    this.defaultHeaders = const {},
    this.timeout,
  });
}

/// Intercept requests/responses for auth, logging, retries, etc.
abstract interface class Interceptor {
  Future<ApiRequest> onRequest(ApiRequest request);
  Future<ApiResponse> onResponse(ApiResponse response);
  Future<ApiResponse> onError(Object error, StackTrace stack, ApiRequest request);
}
```

### Built-in Client Adapters

The generator emits a `clients/` directory with adapters. Users pick one:

```dart
// ─── package:http adapter ──────────────────────────────────
import 'package:http/http.dart' as http;

final class HttpApiClient implements ApiClient {
  final http.Client _inner;
  @override
  final Uri baseUrl;

  HttpApiClient({required this.baseUrl, http.Client? inner})
      : _inner = inner ?? http.Client();

  @override
  Future<ApiResponse> send(ApiRequest request) async {
    final uri = request.resolveUri(baseUrl);
    final response = await _inner.send(
      http.Request(request.method, uri)
        ..headers.addAll(request.headers)
        ..body = request.body as String? ?? '',
    );
    return ApiResponse(
      statusCode: response.statusCode,
      headers: response.headers,
      body: await response.stream.bytesToString(),
    );
  }

  @override
  Future<void> close() async => _inner.close();
}

// ─── Dio adapter ───────────────────────────────────────────
import 'package:dio/dio.dart' as dio;

final class DioApiClient implements ApiClient {
  final dio.Dio _inner;
  @override
  final Uri baseUrl;

  DioApiClient({required this.baseUrl, dio.Dio? inner})
      : _inner = inner ?? dio.Dio(dio.BaseOptions(baseUrl: baseUrl.toString()));

  @override
  Future<ApiResponse> send(ApiRequest request) async {
    final response = await _inner.request<String>(
      request.path,
      queryParameters: request.queryParameters,
      options: dio.Options(
        method: request.method,
        headers: request.headers,
        contentType: request.contentType,
      ),
      data: request.body,
    );
    return ApiResponse(
      statusCode: response.statusCode ?? 0,
      headers: response.headers.map.map((k, v) => MapEntry(k, v.join(', '))),
      body: response.data ?? '',
    );
  }

  @override
  Future<void> close() async => _inner.close();
}
```

### Usage at Call Site

```dart
final config = ApiConfig(
  client: DioApiClient(baseUrl: Uri.parse('https://api.example.com/v1')),
  interceptors: [AuthInterceptor(token: 'sk-...')],
  defaultHeaders: {'User-Agent': 'MyApp/1.0'},
);

final pets = PetsApi(config);
final result = await pets.listPets(limit: 20);

switch (result) {
  case ApiSuccess(:final data): // data is List<Pet>, fully typed
    for (final pet in data) { print(pet.name); }
  case ApiError(:final statusCode, :final error):
    print('Failed: $statusCode - ${error.message}');
}
```

---

## 6. Result Types — No Raw Exceptions

Every operation returns a typed result. No `try/catch` required at call sites:

```dart
/// The result of an API operation.
sealed class ApiResult<T> {
  const ApiResult();
}

final class ApiSuccess<T> extends ApiResult<T> {
  final T data;
  final int statusCode;
  final Map<String, String> headers;

  const ApiSuccess(this.data, {required this.statusCode, this.headers = const {}});
}

final class ApiError<T> extends ApiResult<T> {
  final int statusCode;
  final Object? error;
  final String? rawBody;
  final Map<String, String> headers;

  const ApiError({
    required this.statusCode,
    this.error,
    this.rawBody,
    this.headers = const {},
  });
}

/// Network-level failure (DNS, timeout, connection refused).
final class ApiException<T> extends ApiResult<T> {
  final Object exception;
  final StackTrace stackTrace;

  const ApiException(this.exception, this.stackTrace);
}
```

**Consumer pattern matching:**
```dart
final result = await pets.getPet(id: 42);

final name = switch (result) {
  ApiSuccess(:final data)                   => data.name,
  ApiError(statusCode: 404)                 => 'Not found',
  ApiError(:final statusCode, :final error) => 'Error $statusCode: $error',
  ApiException(:final exception)            => 'Network error: $exception',
};
```

---

## 7. Generated API Client Classes

Each OpenAPI tag becomes an API class. Each operation becomes a method.

```dart
/// Pets API operations.
///
/// All operations return [ApiResult] — use pattern matching to handle
/// success, error, and exception cases.
final class PetsApi {
  final ApiConfig _config;

  const PetsApi(this._config);

  /// List all pets.
  ///
  /// `GET /pets`
  Future<ApiResult<List<Pet>>> listPets({
    int? limit,
    String? cursor,
  }) async {
    final request = ApiRequest(
      method: 'GET',
      path: '/pets',
      headers: {..._config.defaultHeaders},
      queryParameters: {
        ?if (limit != null) 'limit': limit.toString(),   // null-aware element (3.8)
        ?if (cursor != null) 'cursor': cursor,
      },
    );

    return _execute(
      request,
      onSuccess: (response) {
        final json = jsonDecode(response.body) as List<dynamic>;
        return json.map((e) => Pet.fromJson(e as Map<String, dynamic>)).toList();
      },
    );
  }

  /// Get a pet by ID.
  ///
  /// `GET /pets/{petId}`
  Future<ApiResult<Pet>> getPet({required int petId}) async {
    final request = ApiRequest(
      method: 'GET',
      path: '/pets/$petId',
      headers: {..._config.defaultHeaders},
    );

    return _execute(
      request,
      onSuccess: (response) =>
          Pet.fromJson(jsonDecode(response.body) as Map<String, dynamic>),
    );
  }

  /// Create a new pet.
  ///
  /// `POST /pets`
  Future<ApiResult<Pet>> createPet({required CreatePetRequest body}) async {
    final request = ApiRequest(
      method: 'POST',
      path: '/pets',
      headers: {
        ..._config.defaultHeaders,
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body.toJson()),
    );

    return _execute(
      request,
      onSuccess: (response) =>
          Pet.fromJson(jsonDecode(response.body) as Map<String, dynamic>),
    );
  }

  /// Shared execution pipeline: interceptors → send → deserialize.
  Future<ApiResult<T>> _execute<T>(
    ApiRequest request, {
    required T Function(ApiResponse) onSuccess,
  }) async {
    try {
      var req = request;
      for (final interceptor in _config.interceptors) {
        req = await interceptor.onRequest(req);
      }

      var response = await _config.client.send(req);

      for (final interceptor in _config.interceptors) {
        response = await interceptor.onResponse(response);
      }

      if (response.isSuccessful) {
        return ApiSuccess(
          onSuccess(response),
          statusCode: response.statusCode,
          headers: response.headers,
        );
      }
      return ApiError(
        statusCode: response.statusCode,
        rawBody: response.body,
        headers: response.headers,
      );
    } catch (e, st) {
      return ApiException(e, st);
    }
  }
}
```

---

## 8. Type Mapping

### 8.1 Primitive Mapping

| OpenAPI type + format | Dart type | Serialization | Deserialization |
|----------------------|-----------|---------------|-----------------|
| `string` | `String` | identity | identity |
| `string` + `date-time` | `DateTime` | `.toIso8601String()` | `DateTime.parse(v)` |
| `string` + `date` | `DateTime` | `v.toIso8601String().split('T').first` | `DateTime.parse(v)` |
| `string` + `uri` | `Uri` | `.toString()` | `Uri.parse(v)` |
| `string` + `uuid` | `String` | identity | identity |
| `string` + `binary` | `Uint8List` | `base64Encode(v)` | `base64Decode(v)` |
| `string` + `byte` | `Uint8List` | `base64Encode(v)` | `base64Decode(v)` |
| `integer` | `int` | identity | `(v as num).toInt()` |
| `integer` + `int64` | `int` | identity | `(v as num).toInt()` |
| `number` | `double` | identity | `(v as num).toDouble()` |
| `number` + `float` | `double` | identity | `(v as num).toDouble()` |
| `number` + `double` | `double` | identity | `(v as num).toDouble()` |
| `boolean` | `bool` | identity | identity |
| `array` | `List<T>` | `.map((e) => e.toJson()).toList()` | `.map(T.fromJson).toList()` |
| `object` (named) | Generated class | `.toJson()` | `T.fromJson(v)` |
| `object` (inline, no properties) | `Map<String, dynamic>` | identity | identity |
| `object` + `additionalProperties: T` | `Map<String, T>` | `.map(...)` | `.map(...)` |

### 8.2 Nullability Rules

```
Required + not-nullable  →  T       (no default, must be provided)
Required + nullable      →  T?      (must be in JSON, but value can be null)
Optional + not-nullable  →  T?      (may be absent from JSON)
Optional + nullable      →  T?      (absent or null — same semantics)
```

For serialization, optional fields that are `null` are **omitted** from JSON by default. A config flag `includeNullFields` can include them explicitly.

---

## 9. Model Class Generation

Every named schema becomes a `final class` with:

```dart
final class Pet {
  final int id;
  final String name;
  final String? tag;                    // optional field
  final PetStatus status;               // enum
  final List<String> photoUrls;
  final Category? category;

  const Pet({
    required this.id,
    required this.name,
    this.tag,
    required this.status,
    this.photoUrls = const [],
    this.category,
  });

  /// Structural parsing with exact types — no dynamic casts leaking out.
  factory Pet.fromJson(Map<String, dynamic> json) => Pet(
    id: (json['id'] as num).toInt(),
    name: json['name'] as String,
    tag: json['tag'] as String?,
    status: PetStatus.fromJson(json['status'] as String),
    photoUrls: (json['photo_urls'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        const [],
    category: json['category'] != null
        ? Category.fromJson(json['category'] as Map<String, dynamic>)
        : null,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    ?if (tag != null) 'tag': tag,       // null-aware element (3.8)
    'status': status.toJson(),
    'photo_urls': photoUrls,
    ?if (category != null)               // null-aware element (3.8)
      'category': category!.toJson(),
  };

  /// Heuristic check for structural compatibility (used by untagged unions).
  static bool canParse(Map<String, dynamic> json) =>
      json.containsKey('id') && json.containsKey('name');

  Pet copyWith({
    int? id,
    String? name,
    String? Function()? tag,            // nullable field uses thunk to distinguish
    PetStatus? status,                  // "set to null" from "don't change"
    List<String>? photoUrls,
    Category? Function()? category,
  }) => Pet(
    id: id ?? this.id,
    name: name ?? this.name,
    tag: tag != null ? tag() : this.tag,
    status: status ?? this.status,
    photoUrls: photoUrls ?? this.photoUrls,
    category: category != null ? category() : this.category,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pet &&
          id == other.id &&
          name == other.name &&
          tag == other.tag &&
          status == other.status &&
          const ListEquality<String>().equals(photoUrls, other.photoUrls) &&
          category == other.category;

  @override
  int get hashCode => Object.hash(id, name, tag, status, Object.hashAll(photoUrls), category);

  @override
  String toString() => 'Pet(id: $id, name: $name, tag: $tag, status: $status)';
}
```

### Key design decisions:

- **`final class`**: Cannot be extended or implemented — prevents accidental misuse.
- **`const` constructor**: Enables compile-time constant creation where possible.
- **`copyWith` with thunk for nullable fields**: `tag: () => null` sets to null; `tag: null` (default) means "keep current value." This is the cleanest Dart pattern for distinguishing "set null" from "unset."
- **`canParse` static method**: Used by untagged unions to probe whether a JSON object matches this type structurally (checks for required fields unique to the type).
- **Null-aware map elements (`?if`)**: Dart 3.8 feature — optional fields are cleanly omitted from serialized JSON without `if` statement blocks.
- **`ListEquality` for deep equality on collections**: From `package:collection`, used only where needed.
- **No runtime reflection**: Zero use of `dart:mirrors`. Everything is statically known.

---

## 10. Extension Types for Branded Primitives

When OpenAPI defines a `string` with a specific `format` or a constrained `integer`, use Dart 3.3 extension types for zero-cost type safety:

```yaml
components:
  schemas:
    UserId:
      type: string
      format: uuid
    Currency:
      type: string
      pattern: '^[A-Z]{3}$'
    Port:
      type: integer
      minimum: 1
      maximum: 65535
```

**Generated Dart:**
```dart
/// A branded UUID string identifying a user.
extension type const UserId(String value) {
  factory UserId.fromJson(Object? json) => UserId(json as String);
  String toJson() => value;
}

/// An ISO 4217 currency code (e.g. "USD", "EUR").
extension type const Currency(String value) {
  factory Currency.fromJson(Object? json) => Currency(json as String);
  String toJson() => value;
}

/// A network port number (1–65535).
extension type const Port(int value) {
  factory Port.fromJson(Object? json) => Port((json as num).toInt());
  int toJson() => value;
}
```

These compile to the underlying primitive at runtime (zero overhead), but provide compile-time type safety — you can't accidentally pass a `UserId` where a `Currency` is expected.

---

## 11. Code Emitter — `code_builder` Patterns

The emitter translates IR nodes into `code_builder` `Spec` objects. This is where AST construction replaces string templating.

### 11.1 Why `code_builder` Over String Templates

| String template | `code_builder` |
|-----------------|----------------|
| Trailing comma bugs | AST nodes handle syntax |
| Manual indentation | `dart_style` handles formatting |
| Invalid syntax possible | Type-checked spec construction |
| Hard to compose | Specs are composable objects |

### 11.2 Emitter Interface

```dart
/// Each IR node type has a corresponding emitter.
sealed class Emitter {
  List<Spec> emit();
}

final class ModelEmitter extends Emitter {
  final IrObject model;
  ModelEmitter(this.model);

  @override
  List<Spec> emit() {
    return [
      Class((b) => b
        ..name = model.name
        ..modifier = ClassModifier.final$   // final class
        ..constructors.add(_buildConstructor())
        ..constructors.add(_buildFromJson())
        ..fields.addAll(_buildFields())
        ..methods.add(_buildToJson())
        ..methods.add(_buildEquals())
        ..methods.add(_buildHashCode())
        ..methods.add(_buildToString())
        ..methods.add(_buildCopyWith())
        ..methods.add(_buildCanParse())
        ..docs.addAll(_buildDocs())
      ),
    ];
  }

  // ... private builder methods
}

final class SealedUnionEmitter extends Emitter {
  final IrDiscriminatedUnion union;
  SealedUnionEmitter(this.union);

  @override
  List<Spec> emit() {
    final baseClass = Class((b) => b
      ..name = union.name
      ..sealed = true         // sealed class
      ..constructors.add(Constructor((c) => c..constant = true))
      ..methods.add(_buildFromJsonFactory())
      ..methods.add(Method.returnsVoid((m) => m
        ..name = 'toJson'
        ..returns = refer('Map<String, dynamic>')
      ))
    );

    final variants = union.mapping.entries.map(_buildVariantClass);

    return [baseClass, ...variants];
  }

  // ... private builder methods
}

final class EnumEmitter extends Emitter {
  final IrEnum irEnum;
  EnumEmitter(this.irEnum);

  @override
  List<Spec> emit() {
    return [
      Enum((b) => b
        ..name = irEnum.name
        ..values.addAll(irEnum.values.map((v) => EnumValue((ev) => ev
          ..name = _toCamelCase(v)
          ..arguments.add(literalString(v))
        )))
        ..fields.add(Field((f) => f
          ..name = 'value'
          ..type = refer('String')
          ..modifier = FieldModifier.final$
        ))
        ..constructors.add(Constructor((c) => c
          ..constant = true
          ..requiredParameters.add(Parameter((p) => p
            ..name = 'value'
            ..toThis = true
          ))
        ))
        ..methods.add(_buildFromJson())
        ..methods.add(_buildToJson())
      ),
    ];
  }
}
```

### 11.3 Formatting Pipeline

```dart
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

final _emitter = DartEmitter(
  allocator: Allocator.simplePrefixing(), // handles import prefixing
  useNullSafetySyntax: true,
);

final _formatter = DartFormatter(
  languageVersion: DartFormatter.latestLanguageVersion,
);

String emitLibrary(Library library) {
  final raw = library.accept(_emitter).toString();
  return _formatter.format(raw);
}
```

---

## 12. Output File Structure

```
lib/
├── src/
│   ├── client/
│   │   ├── api_client.dart           # ApiClient interface, ApiRequest, ApiResponse
│   │   ├── api_config.dart           # ApiConfig, Interceptor
│   │   ├── api_result.dart           # ApiResult sealed class
│   │   ├── http_api_client.dart      # package:http adapter
│   │   └── dio_api_client.dart       # Dio adapter
│   ├── models/
│   │   ├── pet.dart                  # Per-schema file
│   │   ├── category.dart
│   │   ├── pet_status.dart           # Enum
│   │   ├── shape.dart                # Sealed union + variants
│   │   └── notification.dart         # anyOf composite
│   ├── apis/
│   │   ├── pets_api.dart             # Per-tag API class
│   │   └── store_api.dart
│   └── _serialization.dart           # Shared serialization helpers
├── my_api_client.dart                # Barrel file: exports everything
└── pubspec.yaml                      # Generated with correct dependencies
```

### Generated `pubspec.yaml`

```yaml
name: my_api_client
description: Generated API client for MyApi.
version: 1.0.0
publish_to: none

environment:
  sdk: ^3.8.0               # minimum for null-aware elements

dependencies:
  collection: ^1.18.0        # ListEquality, DeepCollectionEquality
  # One of:
  http: ^1.2.0               # if --client=http
  # dio: ^5.4.0              # if --client=dio
```

---

## 13. CLI Interface

```
dartgen — Generate a Dart client from an OpenAPI specification.

Usage:
  dartgen generate [options]

Options:
  -i, --input <path>         Path or URL to OpenAPI spec (required)
  -o, --output <dir>         Output directory (default: lib/src/generated)
  -n, --name <name>          Package/library name (default: inferred from spec title)
  --client <http|dio|none>   HTTP client adapter to generate (default: http)
  --include-deprecated       Include deprecated operations (default: false)
  --date-library <core|none> DateTime handling (default: core)
  --null-fields              Include null fields in JSON output (default: omit)
  --branded-primitives       Use extension types for formatted strings (default: true)
  --single-file              Emit all types in one file (default: false)
  -v, --verbose              Print IR and diagnostics
  --dry-run                  Parse and validate without writing files
  --help                     Show this help
```

---

## 14. Deterministic Output

The emitter produces **deterministic, diff-friendly output**:

1. **Stable ordering:** Types emitted in alphabetical order by name. Fields in declaration order from the spec. Enum values in spec order.
2. **Stable imports:** Sorted lexicographically.
3. **No timestamps or random IDs** in generated code.
4. **Header comment:**
   ```dart
   // GENERATED CODE — DO NOT MODIFY BY HAND
   //
   // Generated by dartgen from petstore.yaml
   // OpenAPI spec version: 3.0.3
   ```

This ensures that re-running the generator on the same spec produces byte-identical output, making git diffs meaningful.

---

## 15. Error Handling Philosophy

The generator follows a **parse, don't validate** approach:

- **At generation time:** Invalid specs produce clear error messages with JSON Pointer paths to the problematic node. The generator fails fast — no partial output.
- **At runtime (generated code):** Deserialization uses exact casts (`as String`, `as num`), never `dynamic`. Malformed JSON throws `FormatException` with the offending value. Union types throw `FormatException` listing which variants were attempted and why each failed.
- **No silent coercion:** `"123"` does not become `int 123`. `null` does not become `""`. Types mean what they say.

---

## 16. Future Extensions (Out of Scope for v0.1)

- **Streaming responses** (`text/event-stream`) → `Stream<T>` return types
- **Multipart uploads** → `MultipartFile` parameter types
- **Pagination helpers** → `PagedResult<T>` with `nextPage()` methods
- **Retry policy** → Configurable exponential backoff in interceptor
- **OAuth2 interceptor** → Token refresh flow
- **Watch mode** → Re-run on spec file changes
- **OpenAPI 3.1** → Full JSON Schema 2020-12 support

---

## 17. Test Suite — Real-World OpenAPI Specs

The following 10 public OpenAPI specs serve as the conformance test suite for dartgen. They are chosen to cover a wide range of complexity: from tiny specs to massive enterprise APIs, from clean designs to specs full of `oneOf`/`anyOf` abuse, vendor extensions, and circular references. A spec that can't survive Stripe's `anyOf` nesting or GitHub's webhook payloads isn't production-ready.

| # | Service | OAS Version | Why It's a Good Test | Spec Link |
|---|---------|-------------|---------------------|-----------|
| 1 | **Stripe** | 3.0 | The ultimate stress test. ~800 schemas, heavy use of `anyOf` for polymorphic "expandable" fields, vendor extensions (`x-expandableFields`, `x-resourceId`, `x-polymorphicResources`), deeply nested objects. If your generator handles Stripe, it handles anything. | [github.com/stripe/openapi](https://github.com/stripe/openapi) — `openapi/spec3.yaml` |
| 2 | **GitHub REST API** | 3.0 + 3.1 | Massive API surface (~900 operations), heavy use of `oneOf` in webhook payloads, multi-segment path params, `nullable` fields everywhere, multiple response content types. Ships both 3.0 and 3.1 versions. | [github.com/github/rest-api-description](https://github.com/github/rest-api-description) — `descriptions-next/` (3.1) |
| 3 | **OpenAI** | 3.0 | Complex `oneOf` discriminated unions for chat completion message roles, streaming vs. non-streaming responses, function calling schemas-within-schemas. Actively maintained by Stainless. | [github.com/openai/openai-openapi](https://github.com/openai/openai-openapi) — `openapi.yaml` |
| 4 | **Cloudflare** | 3.0 | Huge API surface (~600 endpoints across dozens of products), inconsistent patterns across teams, some OAS compliance issues worth testing error tolerance against. | [github.com/cloudflare/api-schemas](https://github.com/cloudflare/api-schemas) |
| 5 | **Twilio** | 3.0 | Split across many per-product spec files (Messaging, Voice, Video, etc.), good test for multi-file spec merging. Mature and well-structured. | [github.com/twilio/twilio-oai](https://github.com/twilio/twilio-oai) — `spec/json/` and `spec/yaml/` |
| 6 | **DigitalOcean** | 3.0 | Clean, well-organized spec with good use of `$ref` components. Good mid-complexity benchmark — large enough to be real (~300 endpoints) but not pathological. | [github.com/digitalocean/openapi](https://github.com/digitalocean/openapi) — `specification/DigitalOcean-public.v2.yaml` |
| 7 | **Shopify Admin API** | 3.0 | E-commerce domain with deeply nested product/variant/inventory models, pagination via Link headers, heavy use of enums and optional fields. | [shopify.dev/docs/api/admin-rest](https://shopify.dev/docs/api/admin-rest) — spec available via Shopify's API docs |
| 8 | **Petstore (Official OAI Example)** | 3.0 + 3.1 | The canonical "hello world" of OpenAPI. Tiny (~3 endpoints), but useful as a smoke test and baseline. Both 3.0 and 3.1 versions are maintained by the OpenAPI Initiative. | [github.com/OAI/OpenAPI-Specification](https://github.com/OAI/OpenAPI-Specification/tree/main/examples) — `examples/v3.0/petstore.yaml` and `examples/v3.1/` |
| 9 | **Supabase** | 3.0 | Auto-generated from PostgREST, produces specs with `additionalProperties`, deeply nested filter query params, and dynamic table-based paths. Good test for `Map<String, dynamic>` handling. | Generated per-project at `https://<project-ref>.supabase.co/rest/v1/?apikey=<key>` — or see the [PostgREST OpenAPI output](https://postgrest.org/en/stable/references/api/openapi.html) |
| 10 | **Kubernetes** | 3.0 | One of the largest public OpenAPI specs in existence (~800+ schemas, ~1400 operations). Circular `$ref` chains, `intOrString` custom types, deeply nested status/spec/metadata patterns. The ultimate scale and circularity test. | [github.com/kubernetes/kubernetes](https://github.com/kubernetes/kubernetes/tree/master/api/openapi-spec) — `api/openapi-spec/v3/` |

### Recommended Test Progression

```
Level 0 — Smoke test:        Petstore (3 endpoints, trivial types)
Level 1 — Basic models:      DigitalOcean (clean refs, enums, pagination)
Level 2 — Union types:       OpenAI (discriminated oneOf, nested schemas)
Level 3 — Multi-file:        Twilio (per-product spec splitting)
Level 4 — Vendor extensions: Stripe (anyOf abuse, x-expandableFields)
Level 5 — Scale:             GitHub (900 ops, webhook oneOf unions)
Level 6 — Pathological:      Kubernetes (circular refs, intOrString, 800+ schemas)
```

Run all 10 on every CI build. The test is simple: **does the generated code compile with zero analyzer errors?** If `dart analyze` passes on the generated output for all 10 specs, the generator is production-grade.
