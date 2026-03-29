// GENERATED CODE - DO NOT MODIFY BY HAND

final class KeyDeleteResponseObject {const KeyDeleteResponseObject._(this.value);

factory KeyDeleteResponseObject.fromJson(String json) { return switch (json) {
  'organization.project.api_key.deleted' => organizationProjectApiKeyDeleted,
  _ => KeyDeleteResponseObject._(json),
}; }

static const KeyDeleteResponseObject organizationProjectApiKeyDeleted = KeyDeleteResponseObject._('organization.project.api_key.deleted');

static const List<KeyDeleteResponseObject> values = [organizationProjectApiKeyDeleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is KeyDeleteResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'KeyDeleteResponseObject($value)'; } 
 }
final class KeyDeleteResponse {const KeyDeleteResponse({required this.object, required this.id, required this.deleted, });

factory KeyDeleteResponse.fromJson(Map<String, dynamic> json) { return KeyDeleteResponse(
  object: KeyDeleteResponseObject.fromJson(json['object'] as String),
  id: json['id'] as String,
  deleted: json['deleted'] as bool,
); }

final KeyDeleteResponseObject object;

final String id;

final bool deleted;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'id': id,
  'deleted': deleted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('deleted') && json['deleted'] is bool; } 
KeyDeleteResponse copyWith({KeyDeleteResponseObject? object, String? id, bool? deleted, }) { return KeyDeleteResponse(
  object: object ?? this.object,
  id: id ?? this.id,
  deleted: deleted ?? this.deleted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is KeyDeleteResponse &&
          object == other.object &&
          id == other.id &&
          deleted == other.deleted; } 
@override int get hashCode { return Object.hash(object, id, deleted); } 
@override String toString() { return 'KeyDeleteResponse(object: $object, id: $id, deleted: $deleted)'; } 
 }
