// GENERATED CODE - DO NOT MODIFY BY HAND

/// Always `role.deleted`.
final class RoleDeletedResourceObject {const RoleDeletedResourceObject._(this.value);

factory RoleDeletedResourceObject.fromJson(String json) { return switch (json) {
  'role.deleted' => roleDeleted,
  _ => RoleDeletedResourceObject._(json),
}; }

static const RoleDeletedResourceObject roleDeleted = RoleDeletedResourceObject._('role.deleted');

static const List<RoleDeletedResourceObject> values = [roleDeleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RoleDeletedResourceObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RoleDeletedResourceObject($value)'; } 
 }
/// Confirmation payload returned after deleting a role.
final class RoleDeletedResource {const RoleDeletedResource({required this.object, required this.id, required this.deleted, });

factory RoleDeletedResource.fromJson(Map<String, dynamic> json) { return RoleDeletedResource(
  object: RoleDeletedResourceObject.fromJson(json['object'] as String),
  id: json['id'] as String,
  deleted: json['deleted'] as bool,
); }

/// Always `role.deleted`.
final RoleDeletedResourceObject object;

/// Identifier of the deleted role.
final String id;

/// Whether the role was deleted.
final bool deleted;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'id': id,
  'deleted': deleted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('deleted') && json['deleted'] is bool; } 
RoleDeletedResource copyWith({RoleDeletedResourceObject? object, String? id, bool? deleted, }) { return RoleDeletedResource(
  object: object ?? this.object,
  id: id ?? this.id,
  deleted: deleted ?? this.deleted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RoleDeletedResource &&
          object == other.object &&
          id == other.id &&
          deleted == other.deleted; } 
@override int get hashCode { return Object.hash(object, id, deleted); } 
@override String toString() { return 'RoleDeletedResource(object: $object, id: $id, deleted: $deleted)'; } 
 }
