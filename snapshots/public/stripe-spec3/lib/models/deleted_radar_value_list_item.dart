// GENERATED CODE - DO NOT MODIFY BY HAND

/// String representing the object's type. Objects of the same type share the same value.
final class DeletedRadarValueListItemObject {const DeletedRadarValueListItemObject._(this.value);

factory DeletedRadarValueListItemObject.fromJson(String json) { return switch (json) {
  'radar.value_list_item' => radarValueListItem,
  _ => DeletedRadarValueListItemObject._(json),
}; }

static const DeletedRadarValueListItemObject radarValueListItem = DeletedRadarValueListItemObject._('radar.value_list_item');

static const List<DeletedRadarValueListItemObject> values = [radarValueListItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletedRadarValueListItemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletedRadarValueListItemObject($value)'; } 
 }
/// 
final class DeletedRadarValueListItem {const DeletedRadarValueListItem({required this.deleted, required this.id, required this.object, });

factory DeletedRadarValueListItem.fromJson(Map<String, dynamic> json) { return DeletedRadarValueListItem(
  deleted: json['deleted'] as bool,
  id: json['id'] as String,
  object: DeletedRadarValueListItemObject.fromJson(json['object'] as String),
); }

/// Always true for a deleted object
final bool deleted;

/// Unique identifier for the object.
final String id;

/// String representing the object's type. Objects of the same type share the same value.
final DeletedRadarValueListItemObject object;

Map<String, dynamic> toJson() { return {
  'deleted': deleted,
  'id': id,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('object'); } 
DeletedRadarValueListItem copyWith({bool? deleted, String? id, DeletedRadarValueListItemObject? object, }) { return DeletedRadarValueListItem(
  deleted: deleted ?? this.deleted,
  id: id ?? this.id,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletedRadarValueListItem &&
          deleted == other.deleted &&
          id == other.id &&
          object == other.object; } 
@override int get hashCode { return Object.hash(deleted, id, object); } 
@override String toString() { return 'DeletedRadarValueListItem(deleted: $deleted, id: $id, object: $object)'; } 
 }
