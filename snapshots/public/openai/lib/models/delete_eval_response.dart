// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteEvalResponse {const DeleteEvalResponse({required this.object, required this.deleted, required this.evalId, });

factory DeleteEvalResponse.fromJson(Map<String, dynamic> json) { return DeleteEvalResponse(
  object: json['object'] as String,
  deleted: json['deleted'] as bool,
  evalId: json['eval_id'] as String,
); }

final String object;

final bool deleted;

final String evalId;

Map<String, dynamic> toJson() { return {
  'object': object,
  'deleted': deleted,
  'eval_id': evalId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') && json['object'] is String &&
      json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('eval_id') && json['eval_id'] is String; } 
DeleteEvalResponse copyWith({String? object, bool? deleted, String? evalId, }) { return DeleteEvalResponse(
  object: object ?? this.object,
  deleted: deleted ?? this.deleted,
  evalId: evalId ?? this.evalId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteEvalResponse &&
          object == other.object &&
          deleted == other.deleted &&
          evalId == other.evalId; } 
@override int get hashCode { return Object.hash(object, deleted, evalId); } 
@override String toString() { return 'DeleteEvalResponse(object: $object, deleted: $deleted, evalId: $evalId)'; } 
 }
