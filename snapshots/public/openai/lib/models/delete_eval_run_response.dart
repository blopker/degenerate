// GENERATED CODE - DO NOT MODIFY BY HAND

final class DeleteEvalRunResponse {const DeleteEvalRunResponse({this.object, this.deleted, this.runId, });

factory DeleteEvalRunResponse.fromJson(Map<String, dynamic> json) { return DeleteEvalRunResponse(
  object: json['object'] as String?,
  deleted: json['deleted'] as bool?,
  runId: json['run_id'] as String?,
); }

final String? object;

final bool? deleted;

final String? runId;

Map<String, dynamic> toJson() { return {
  'object': ?object,
  'deleted': ?deleted,
  'run_id': ?runId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'object', 'deleted', 'run_id'}.contains(key)); } 
DeleteEvalRunResponse copyWith({String Function()? object, bool Function()? deleted, String Function()? runId, }) { return DeleteEvalRunResponse(
  object: object != null ? object() : this.object,
  deleted: deleted != null ? deleted() : this.deleted,
  runId: runId != null ? runId() : this.runId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteEvalRunResponse &&
          object == other.object &&
          deleted == other.deleted &&
          runId == other.runId; } 
@override int get hashCode { return Object.hash(object, deleted, runId); } 
@override String toString() { return 'DeleteEvalRunResponse(object: $object, deleted: $deleted, runId: $runId)'; } 
 }
