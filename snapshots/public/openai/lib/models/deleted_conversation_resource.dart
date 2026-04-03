// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeletedConversationResourceObject {const DeletedConversationResourceObject._(this.value);

factory DeletedConversationResourceObject.fromJson(String json) { return switch (json) {
  'conversation.deleted' => conversationDeleted,
  _ => DeletedConversationResourceObject._(json),
}; }

static const DeletedConversationResourceObject conversationDeleted = DeletedConversationResourceObject._('conversation.deleted');

static const List<DeletedConversationResourceObject> values = [conversationDeleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletedConversationResourceObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletedConversationResourceObject($value)'; } 
 }
@immutable final class DeletedConversationResource {const DeletedConversationResource({required this.deleted, required this.id, this.object = DeletedConversationResourceObject.conversationDeleted, });

factory DeletedConversationResource.fromJson(Map<String, dynamic> json) { return DeletedConversationResource(
  object: DeletedConversationResourceObject.fromJson(json['object'] as String),
  deleted: json['deleted'] as bool,
  id: json['id'] as String,
); }

final DeletedConversationResourceObject object;

final bool deleted;

final String id;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'deleted': deleted,
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('id') && json['id'] is String; } 
DeletedConversationResource copyWith({DeletedConversationResourceObject? object, bool? deleted, String? id, }) { return DeletedConversationResource(
  object: object ?? this.object,
  deleted: deleted ?? this.deleted,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletedConversationResource &&
          object == other.object &&
          deleted == other.deleted &&
          id == other.id; } 
@override int get hashCode { return Object.hash(object, deleted, id); } 
@override String toString() { return 'DeletedConversationResource(object: $object, deleted: $deleted, id: $id)'; } 
 }
