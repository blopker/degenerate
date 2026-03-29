// GENERATED CODE - DO NOT MODIFY BY HAND

final class DeleteAssistantResponseObject {const DeleteAssistantResponseObject._(this.value);

factory DeleteAssistantResponseObject.fromJson(String json) { return switch (json) {
  'assistant.deleted' => assistantDeleted,
  _ => DeleteAssistantResponseObject._(json),
}; }

static const DeleteAssistantResponseObject assistantDeleted = DeleteAssistantResponseObject._('assistant.deleted');

static const List<DeleteAssistantResponseObject> values = [assistantDeleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteAssistantResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeleteAssistantResponseObject($value)'; } 
 }
final class DeleteAssistantResponse {const DeleteAssistantResponse({required this.id, required this.deleted, required this.object, });

factory DeleteAssistantResponse.fromJson(Map<String, dynamic> json) { return DeleteAssistantResponse(
  id: json['id'] as String,
  deleted: json['deleted'] as bool,
  object: DeleteAssistantResponseObject.fromJson(json['object'] as String),
); }

final String id;

final bool deleted;

final DeleteAssistantResponseObject object;

Map<String, dynamic> toJson() { return {
  'id': id,
  'deleted': deleted,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('object'); } 
DeleteAssistantResponse copyWith({String? id, bool? deleted, DeleteAssistantResponseObject? object, }) { return DeleteAssistantResponse(
  id: id ?? this.id,
  deleted: deleted ?? this.deleted,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteAssistantResponse &&
          id == other.id &&
          deleted == other.deleted &&
          object == other.object; } 
@override int get hashCode { return Object.hash(id, deleted, object); } 
@override String toString() { return 'DeleteAssistantResponse(id: $id, deleted: $deleted, object: $object)'; } 
 }
