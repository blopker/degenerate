// GENERATED CODE - DO NOT MODIFY BY HAND

/// String representing the object's type. Objects of the same type share the same value.
final class DeletedPersonObject {const DeletedPersonObject._(this.value);

factory DeletedPersonObject.fromJson(String json) { return switch (json) {
  'person' => person,
  _ => DeletedPersonObject._(json),
}; }

static const DeletedPersonObject person = DeletedPersonObject._('person');

static const List<DeletedPersonObject> values = [person];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletedPersonObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletedPersonObject($value)'; } 
 }
/// 
final class DeletedPerson {const DeletedPerson({required this.deleted, required this.id, required this.object, });

factory DeletedPerson.fromJson(Map<String, dynamic> json) { return DeletedPerson(
  deleted: json['deleted'] as bool,
  id: json['id'] as String,
  object: DeletedPersonObject.fromJson(json['object'] as String),
); }

/// Always true for a deleted object
final bool deleted;

/// Unique identifier for the object.
final String id;

/// String representing the object's type. Objects of the same type share the same value.
final DeletedPersonObject object;

Map<String, dynamic> toJson() { return {
  'deleted': deleted,
  'id': id,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('object'); } 
DeletedPerson copyWith({bool? deleted, String? id, DeletedPersonObject? object, }) { return DeletedPerson(
  deleted: deleted ?? this.deleted,
  id: id ?? this.id,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletedPerson &&
          deleted == other.deleted &&
          id == other.id &&
          object == other.object; } 
@override int get hashCode { return Object.hash(deleted, id, object); } 
@override String toString() { return 'DeletedPerson(deleted: $deleted, id: $id, object: $object)'; } 
 }
