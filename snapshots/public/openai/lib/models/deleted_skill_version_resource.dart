// GENERATED CODE - DO NOT MODIFY BY HAND

final class DeletedSkillVersionResourceObject {const DeletedSkillVersionResourceObject._(this.value);

factory DeletedSkillVersionResourceObject.fromJson(String json) { return switch (json) {
  'skill.version.deleted' => skillVersionDeleted,
  _ => DeletedSkillVersionResourceObject._(json),
}; }

static const DeletedSkillVersionResourceObject skillVersionDeleted = DeletedSkillVersionResourceObject._('skill.version.deleted');

static const List<DeletedSkillVersionResourceObject> values = [skillVersionDeleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletedSkillVersionResourceObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletedSkillVersionResourceObject($value)'; } 
 }
final class DeletedSkillVersionResource {const DeletedSkillVersionResource({this.object = DeletedSkillVersionResourceObject.skillVersionDeleted, required this.deleted, required this.id, required this.version, });

factory DeletedSkillVersionResource.fromJson(Map<String, dynamic> json) { return DeletedSkillVersionResource(
  object: DeletedSkillVersionResourceObject.fromJson(json['object'] as String),
  deleted: json['deleted'] as bool,
  id: json['id'] as String,
  version: json['version'] as String,
); }

final DeletedSkillVersionResourceObject object;

final bool deleted;

final String id;

/// The deleted skill version.
final String version;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'deleted': deleted,
  'id': id,
  'version': version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('version') && json['version'] is String; } 
DeletedSkillVersionResource copyWith({DeletedSkillVersionResourceObject? object, bool? deleted, String? id, String? version, }) { return DeletedSkillVersionResource(
  object: object ?? this.object,
  deleted: deleted ?? this.deleted,
  id: id ?? this.id,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletedSkillVersionResource &&
          object == other.object &&
          deleted == other.deleted &&
          id == other.id &&
          version == other.version; } 
@override int get hashCode { return Object.hash(object, deleted, id, version); } 
@override String toString() { return 'DeletedSkillVersionResource(object: $object, deleted: $deleted, id: $id, version: $version)'; } 
 }
