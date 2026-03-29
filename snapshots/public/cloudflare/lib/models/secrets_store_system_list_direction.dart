// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecretsStoreSystemListDirection {const SecretsStoreSystemListDirection._(this.value);

factory SecretsStoreSystemListDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => SecretsStoreSystemListDirection._(json),
}; }

static const SecretsStoreSystemListDirection asc = SecretsStoreSystemListDirection._('asc');

static const SecretsStoreSystemListDirection desc = SecretsStoreSystemListDirection._('desc');

static const List<SecretsStoreSystemListDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretsStoreSystemListDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecretsStoreSystemListDirection($value)'; } 
 }
