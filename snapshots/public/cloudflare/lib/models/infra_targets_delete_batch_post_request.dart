// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_target_id.dart';final class InfraTargetsDeleteBatchPostRequest {const InfraTargetsDeleteBatchPostRequest({required this.targetIds});

factory InfraTargetsDeleteBatchPostRequest.fromJson(Map<String, dynamic> json) { return InfraTargetsDeleteBatchPostRequest(
  targetIds: (json['target_ids'] as List<dynamic>).map((e) => InfraTargetId.fromJson(e as String)).toList(),
); }

/// List of target IDs to bulk delete
final List<InfraTargetId> targetIds;

Map<String, dynamic> toJson() { return {
  'target_ids': targetIds.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('target_ids'); } 
InfraTargetsDeleteBatchPostRequest copyWith({List<InfraTargetId>? targetIds}) { return InfraTargetsDeleteBatchPostRequest(
  targetIds: targetIds ?? this.targetIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraTargetsDeleteBatchPostRequest &&
          listEquals(targetIds, other.targetIds); } 
@override int get hashCode { return Object.hashAll(targetIds).hashCode; } 
@override String toString() { return 'InfraTargetsDeleteBatchPostRequest(targetIds: $targetIds)'; } 
 }
