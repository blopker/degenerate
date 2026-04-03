// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Granular configuration for tracing.
/// 
@immutable final class TracingConfiguration3 {const TracingConfiguration3({this.workflowName, this.groupId, this.metadata, });

factory TracingConfiguration3.fromJson(Map<String, dynamic> json) { return TracingConfiguration3(
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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'workflow_name', 'group_id', 'metadata'}.contains(key)); } 
TracingConfiguration3 copyWith({String Function()? workflowName, String Function()? groupId, Map<String, dynamic> Function()? metadata, }) { return TracingConfiguration3(
  workflowName: workflowName != null ? workflowName() : this.workflowName,
  groupId: groupId != null ? groupId() : this.groupId,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TracingConfiguration3 &&
          workflowName == other.workflowName &&
          groupId == other.groupId &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(workflowName, groupId, metadata); } 
@override String toString() { return 'TracingConfiguration3(workflowName: $workflowName, groupId: $groupId, metadata: $metadata)'; } 
 }
