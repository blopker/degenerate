// GENERATED CODE - DO NOT MODIFY BY HAND

final class PagesSecretTextEnvVarType {const PagesSecretTextEnvVarType._(this.value);

factory PagesSecretTextEnvVarType.fromJson(String json) { return switch (json) {
  'secret_text' => secretText,
  _ => PagesSecretTextEnvVarType._(json),
}; }

static const PagesSecretTextEnvVarType secretText = PagesSecretTextEnvVarType._('secret_text');

static const List<PagesSecretTextEnvVarType> values = [secretText];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesSecretTextEnvVarType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PagesSecretTextEnvVarType($value)'; } 
 }
/// An encrypted environment variable.
final class PagesSecretTextEnvVar {const PagesSecretTextEnvVar({required this.type, required this.value, });

factory PagesSecretTextEnvVar.fromJson(Map<String, dynamic> json) { return PagesSecretTextEnvVar(
  type: PagesSecretTextEnvVarType.fromJson(json['type'] as String),
  value: json['value'] as String,
); }

final PagesSecretTextEnvVarType type;

/// Secret value.
final String value;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('value') && json['value'] is String; } 
PagesSecretTextEnvVar copyWith({PagesSecretTextEnvVarType? type, String? value, }) { return PagesSecretTextEnvVar(
  type: type ?? this.type,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesSecretTextEnvVar &&
          type == other.type &&
          value == other.value; } 
@override int get hashCode { return Object.hash(type, value); } 
@override String toString() { return 'PagesSecretTextEnvVar(type: $type, value: $value)'; } 
 }
