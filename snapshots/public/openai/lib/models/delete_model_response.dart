// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteModelResponse {const DeleteModelResponse({required this.id, required this.deleted, required this.object, });

factory DeleteModelResponse.fromJson(Map<String, dynamic> json) { return DeleteModelResponse(
  id: json['id'] as String,
  deleted: json['deleted'] as bool,
  object: json['object'] as String,
); }

final String id;

final bool deleted;

final String object;

Map<String, dynamic> toJson() { return {
  'id': id,
  'deleted': deleted,
  'object': object,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('object') && json['object'] is String; } 
DeleteModelResponse copyWith({String? id, bool? deleted, String? object, }) { return DeleteModelResponse(
  id: id ?? this.id,
  deleted: deleted ?? this.deleted,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteModelResponse &&
          id == other.id &&
          deleted == other.deleted &&
          object == other.object; } 
@override int get hashCode { return Object.hash(id, deleted, object); } 
@override String toString() { return 'DeleteModelResponse(id: $id, deleted: $deleted, object: $object)'; } 
 }
