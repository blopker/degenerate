// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteFileResponseObject {const DeleteFileResponseObject._(this.value);

factory DeleteFileResponseObject.fromJson(String json) { return switch (json) {
  'file' => file,
  _ => DeleteFileResponseObject._(json),
}; }

static const DeleteFileResponseObject file = DeleteFileResponseObject._('file');

static const List<DeleteFileResponseObject> values = [file];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteFileResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeleteFileResponseObject($value)'; } 
 }
@immutable final class DeleteFileResponse {const DeleteFileResponse({required this.id, required this.object, required this.deleted, });

factory DeleteFileResponse.fromJson(Map<String, dynamic> json) { return DeleteFileResponse(
  id: json['id'] as String,
  object: DeleteFileResponseObject.fromJson(json['object'] as String),
  deleted: json['deleted'] as bool,
); }

final String id;

final DeleteFileResponseObject object;

final bool deleted;

Map<String, dynamic> toJson() { return {
  'id': id,
  'object': object.toJson(),
  'deleted': deleted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('deleted') && json['deleted'] is bool; } 
DeleteFileResponse copyWith({String? id, DeleteFileResponseObject? object, bool? deleted, }) { return DeleteFileResponse(
  id: id ?? this.id,
  object: object ?? this.object,
  deleted: deleted ?? this.deleted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteFileResponse &&
          id == other.id &&
          object == other.object &&
          deleted == other.deleted; } 
@override int get hashCode { return Object.hash(id, object, deleted); } 
@override String toString() { return 'DeleteFileResponse(id: $id, object: $object, deleted: $deleted)'; } 
 }
