// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteVectorStoreFileResponseObject {const DeleteVectorStoreFileResponseObject._(this.value);

factory DeleteVectorStoreFileResponseObject.fromJson(String json) { return switch (json) {
  'vector_store.file.deleted' => vectorStoreFileDeleted,
  _ => DeleteVectorStoreFileResponseObject._(json),
}; }

static const DeleteVectorStoreFileResponseObject vectorStoreFileDeleted = DeleteVectorStoreFileResponseObject._('vector_store.file.deleted');

static const List<DeleteVectorStoreFileResponseObject> values = [vectorStoreFileDeleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteVectorStoreFileResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeleteVectorStoreFileResponseObject($value)'; } 
 }
@immutable final class DeleteVectorStoreFileResponse {const DeleteVectorStoreFileResponse({required this.id, required this.deleted, required this.object, });

factory DeleteVectorStoreFileResponse.fromJson(Map<String, dynamic> json) { return DeleteVectorStoreFileResponse(
  id: json['id'] as String,
  deleted: json['deleted'] as bool,
  object: DeleteVectorStoreFileResponseObject.fromJson(json['object'] as String),
); }

final String id;

final bool deleted;

final DeleteVectorStoreFileResponseObject object;

Map<String, dynamic> toJson() { return {
  'id': id,
  'deleted': deleted,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('object'); } 
DeleteVectorStoreFileResponse copyWith({String? id, bool? deleted, DeleteVectorStoreFileResponseObject? object, }) { return DeleteVectorStoreFileResponse(
  id: id ?? this.id,
  deleted: deleted ?? this.deleted,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteVectorStoreFileResponse &&
          id == other.id &&
          deleted == other.deleted &&
          object == other.object; } 
@override int get hashCode { return Object.hash(id, deleted, object); } 
@override String toString() { return 'DeleteVectorStoreFileResponse(id: $id, deleted: $deleted, object: $object)'; } 
 }
