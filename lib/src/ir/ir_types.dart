// Intermediate Representation types for the dartgen pipeline.
//
// Every OpenAPI construct maps to exactly one IR node. The IR is fully
// resolved — no $ref strings, no ambiguity.

// ─── Type IR ───────────────────────────────────────────────

/// Root of all type representations in the IR.
sealed class IrType {
  final String? description;
  final bool isNullable;
  const IrType({this.description, this.isNullable = false});

  /// The emittable type name, or `null` for anonymous types
  /// (primitives, lists, maps, type refs).
  String? get emittableName => switch (this) {
    IrObject(:final name) => name,
    IrEnum(:final name) => name,
    IrDiscriminatedUnion(:final name) => name,
    IrUntaggedUnion(:final name) => name,
    IrAnyOf(:final name) => name,
    IrExtensionType(:final name) => name,
    _ => null,
  };
}

final class IrPrimitive extends IrType {
  final PrimitiveKind kind;
  final String? format; // original OpenAPI format for pass-through
  const IrPrimitive(
    this.kind, {
    this.format,
    super.description,
    super.isNullable,
  });
}

final class IrEnum extends IrType {
  final String name;
  final List<String> values;
  final String? defaultValue;
  const IrEnum(
    this.name,
    this.values, {
    this.defaultValue,
    super.description,
    super.isNullable,
  });
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
  const IrObject(
    this.name,
    this.fields, {
    this.requiredFields = const [],
    super.description,
    super.isNullable,
  });
}

final class IrField {
  final String name;
  final String originalName; // JSON key, may differ from Dart name
  final IrType type;
  final bool isRequired;
  final Object? defaultValue;
  final String? description;
  const IrField(
    this.name,
    this.originalName,
    this.type, {
    this.isRequired = false,
    this.defaultValue,
    this.description,
  });
}

/// oneOf with discriminator — generates sealed class hierarchy.
final class IrDiscriminatedUnion extends IrType {
  final String name;
  final String discriminatorProperty;
  final Map<String, IrType> mapping; // discriminator value → variant type
  const IrDiscriminatedUnion(
    this.name,
    this.discriminatorProperty,
    this.mapping, {
    super.description,
    super.isNullable,
  });
}

/// oneOf without discriminator — generates sealed class with runtime matching.
final class IrUntaggedUnion extends IrType {
  final String name;
  final List<IrType> variants;
  const IrUntaggedUnion(
    this.name,
    this.variants, {
    super.description,
    super.isNullable,
  });
}

/// anyOf — generates a composite that can be multiple types simultaneously.
final class IrAnyOf extends IrType {
  final String name;
  final List<IrType> variants;
  const IrAnyOf(
    this.name,
    this.variants, {
    super.description,
    super.isNullable,
  });
}

/// A named wrapper around a primitive type, emitted as a Dart extension type.
///
/// Example: `UserId: {type: string, format: uuid}` →
/// `extension type const UserId(String value) { ... }`
final class IrExtensionType extends IrType {
  final String name;
  final IrPrimitive inner;
  const IrExtensionType(
    this.name,
    this.inner, {
    super.description,
    super.isNullable,
  });
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

final class IrSecurityRequirement {
  final Map<String, List<String>> schemes;
  const IrSecurityRequirement(this.schemes);
}

final class IrOAuthFlow {
  final String type;
  final String? authorizationUrl;
  final String? tokenUrl;
  final String? refreshUrl;
  final Map<String, String> scopes;
  const IrOAuthFlow({
    required this.type,
    this.authorizationUrl,
    this.tokenUrl,
    this.refreshUrl,
    this.scopes = const {},
  });
}

final class IrSecurityScheme {
  final String name;
  final String type;
  final String? scheme;
  final String? bearerFormat;
  final String? parameterName;
  final String? location;
  final String? openIdConnectUrl;
  final List<IrOAuthFlow> flows;
  const IrSecurityScheme({
    required this.name,
    required this.type,
    this.scheme,
    this.bearerFormat,
    this.parameterName,
    this.location,
    this.openIdConnectUrl,
    this.flows = const [],
  });
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
  final List<IrSecurityRequirement>? securityRequirements;
  const IrOperation(
    this.operationId,
    this.dartMethodName,
    this.method,
    this.path, {
    this.summary,
    this.description,
    this.parameters = const [],
    this.requestBody,
    this.responses = const {},
    this.defaultResponse,
    this.isDeprecated = false,
    this.securityRequirements,
  });
}

final class IrParameter {
  final String name;
  final String dartName;
  final ParameterLocation location; // path, query, header, cookie
  final IrType type;
  final bool isRequired;
  final String? style;
  final bool? explode;
  final bool allowReserved;
  final Object? defaultValue;
  const IrParameter(
    this.name,
    this.dartName,
    this.location,
    this.type, {
    this.isRequired = false,
    this.style,
    this.explode,
    this.allowReserved = false,
    this.defaultValue,
  });
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
  const IrResponse({
    this.description,
    this.content = const {},
    this.headers = const [],
  });
}

enum HttpMethod { get, post, put, patch, delete, head, options, trace }

enum ParameterLocation { path, query, header, cookie }

enum PrimitiveKind {
  object,
  string,
  int,
  double,
  num,
  bool,
  dateTime,
  uri,
  bigInt,
  duration,
  bytes,
}
