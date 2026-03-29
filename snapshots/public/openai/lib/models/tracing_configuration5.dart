// GENERATED CODE - DO NOT MODIFY BY HAND

/// Granular configuration for tracing.
/// 
final class TracingConfiguration5 {const TracingConfiguration5({this.workflowName, this.groupId, this.metadata, });

factory TracingConfiguration5.fromJson(Map<String, dynamic> json) { return TracingConfiguration5(
  workflowName: json['workflow_name'] as String?,
  groupId: json['group_id'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

/// The name of the workflow to attach to this trace. This is used to
/// name the trace in the Traces Dashboard.
/// 
final String? workflowName;

/// The group id to attach to this trace to enable filtering and
/// grouping in the Traces Dashboard.
/// 
final String? groupId;

/// The arbitrary metadata to attach to this trace to enable
/// filtering in the Traces Dashboard.
/// 
final Map<String,dynamic>? metadata;

Map<String, dynamic> toJson() { return {
  'workflow_name': ?workflowName,
  'group_id': ?groupId,
  'metadata': ?metadata,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TracingConfiguration5 copyWith({String Function()? workflowName, String Function()? groupId, Map<String, dynamic> Function()? metadata, }) { return TracingConfiguration5(
  workflowName: workflowName != null ? workflowName() : this.workflowName,
  groupId: groupId != null ? groupId() : this.groupId,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TracingConfiguration5 &&
          workflowName == other.workflowName &&
          groupId == other.groupId &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(workflowName, groupId, metadata); } 
@override String toString() { return 'TracingConfiguration5(workflowName: $workflowName, groupId: $groupId, metadata: $metadata)'; } 
 }
