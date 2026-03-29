// GENERATED CODE - DO NOT MODIFY BY HAND

/// The object type, which is always `organization.project.service_account.api_key`
final class Key4Object {const Key4Object._(this.value);

factory Key4Object.fromJson(String json) { return switch (json) {
  'organization.project.service_account.api_key' => organizationProjectServiceAccountApiKey,
  _ => Key4Object._(json),
}; }

static const Key4Object organizationProjectServiceAccountApiKey = Key4Object._('organization.project.service_account.api_key');

static const List<Key4Object> values = [organizationProjectServiceAccountApiKey];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Key4Object && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Key4Object($value)'; } 
 }
final class Key4 {const Key4({required this.object, required this.value, required this.name, required this.createdAt, required this.id, });

factory Key4.fromJson(Map<String, dynamic> json) { return Key4(
  object: Key4Object.fromJson(json['object'] as String),
  value: json['value'] as String,
  name: json['name'] as String,
  createdAt: (json['created_at'] as num).toInt(),
  id: json['id'] as String,
); }

/// The object type, which is always `organization.project.service_account.api_key`
final Key4Object object;

final String value;

final String name;

final int createdAt;

final String id;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'value': value,
  'name': name,
  'created_at': createdAt,
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('value') && json['value'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('id') && json['id'] is String; } 
Key4 copyWith({Key4Object? object, String? value, String? name, int? createdAt, String? id, }) { return Key4(
  object: object ?? this.object,
  value: value ?? this.value,
  name: name ?? this.name,
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Key4 &&
          object == other.object &&
          value == other.value &&
          name == other.name &&
          createdAt == other.createdAt &&
          id == other.id; } 
@override int get hashCode { return Object.hash(object, value, name, createdAt, id); } 
@override String toString() { return 'Key4(object: $object, value: $value, name: $name, createdAt: $createdAt, id: $id)'; } 
 }
