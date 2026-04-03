// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateFineTuningCheckpointPermissionRequest {const CreateFineTuningCheckpointPermissionRequest({required this.projectIds});

factory CreateFineTuningCheckpointPermissionRequest.fromJson(Map<String, dynamic> json) { return CreateFineTuningCheckpointPermissionRequest(
  projectIds: (json['project_ids'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The project identifiers to grant access to.
final List<String> projectIds;

Map<String, dynamic> toJson() { return {
  'project_ids': projectIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('project_ids'); } 
CreateFineTuningCheckpointPermissionRequest copyWith({List<String>? projectIds}) { return CreateFineTuningCheckpointPermissionRequest(
  projectIds: projectIds ?? this.projectIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateFineTuningCheckpointPermissionRequest &&
          listEquals(projectIds, other.projectIds); } 
@override int get hashCode { return Object.hashAll(projectIds).hashCode; } 
@override String toString() { return 'CreateFineTuningCheckpointPermissionRequest(projectIds: $projectIds)'; } 
 }
