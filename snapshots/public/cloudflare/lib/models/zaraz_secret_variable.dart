// GENERATED CODE - DO NOT MODIFY BY HAND

final class ZarazSecretVariableType {const ZarazSecretVariableType._(this.value);

factory ZarazSecretVariableType.fromJson(String json) { return switch (json) {
  'secret' => secret,
  _ => ZarazSecretVariableType._(json),
}; }

static const ZarazSecretVariableType secret = ZarazSecretVariableType._('secret');

static const List<ZarazSecretVariableType> values = [secret];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazSecretVariableType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZarazSecretVariableType($value)'; } 
 }
final class ZarazSecretVariable {const ZarazSecretVariable({required this.name, required this.type, required this.value, });

factory ZarazSecretVariable.fromJson(Map<String, dynamic> json) { return ZarazSecretVariable(
  name: json['name'] as String,
  type: ZarazSecretVariableType.fromJson(json['type'] as String),
  value: json['value'] as String,
); }

final String name;

final ZarazSecretVariableType type;

final String value;

Map<String, dynamic> toJson() { return {
  'name': name,
  'type': type.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('type') &&
      json.containsKey('value') && json['value'] is String; } 
ZarazSecretVariable copyWith({String? name, ZarazSecretVariableType? type, String? value, }) { return ZarazSecretVariable(
  name: name ?? this.name,
  type: type ?? this.type,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazSecretVariable &&
          name == other.name &&
          type == other.type &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, type, value); } 
@override String toString() { return 'ZarazSecretVariable(name: $name, type: $type, value: $value)'; } 
 }
