// GENERATED CODE — DO NOT MODIFY BY HAND

/// Parse a [DateTime] from a JSON value.
///
/// Accepts ISO 8601 strings. Returns `null` if [value] is `null`.
DateTime parseDateTime(Object? value) {
  if (value is DateTime) return value;
  if (value is String) return DateTime.parse(value);
  throw FormatException('Cannot parse DateTime from: $value');
}

/// Parse a nullable [DateTime] from a JSON value.
///
/// Returns `null` if [value] is `null`.
DateTime? parseDateTimeNullable(Object? value) {
  if (value == null) return null;
  return parseDateTime(value);
}

/// Deserialize a JSON array into a `List<T>` using the provided [fromJson]
/// factory for each element.
///
/// Expects [json] to be a `List<dynamic>`.
List<T> deserializeList<T>(Object? json, T Function(Object?) fromJson) {
  if (json is! List) {
    throw FormatException('Expected a JSON array, got: ${json.runtimeType}');
  }
  return json.map(fromJson).toList();
}

/// Deserialize a nullable JSON array into a `List<T>?`.
///
/// Returns `null` if [json] is `null`.
List<T>? deserializeListNullable<T>(
  Object? json,
  T Function(Object?) fromJson,
) {
  if (json == null) return null;
  return deserializeList(json, fromJson);
}

/// Deserialize a JSON object into a `Map<String, T>` using the provided
/// [fromJson] factory for each value.
///
/// Expects [json] to be a `Map<String, dynamic>`.
Map<String, T> deserializeMap<T>(Object? json, T Function(Object?) fromJson) {
  if (json is! Map<String, dynamic>) {
    throw FormatException('Expected a JSON object, got: ${json.runtimeType}');
  }
  return json.map((key, value) => MapEntry(key, fromJson(value)));
}

/// Deserialize a nullable JSON object into a `Map<String, T>?`.
///
/// Returns `null` if [json] is `null`.
Map<String, T>? deserializeMapNullable<T>(
  Object? json,
  T Function(Object?) fromJson,
) {
  if (json == null) return null;
  return deserializeMap(json, fromJson);
}
