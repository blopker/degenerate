// GENERATED CODE - DO NOT MODIFY BY HAND

/// The payload used to create the checkpoint permission.
final class AuditLogCheckpointPermissionCreatedData {const AuditLogCheckpointPermissionCreatedData({this.projectId, this.fineTunedModelCheckpoint, });

factory AuditLogCheckpointPermissionCreatedData.fromJson(Map<String, dynamic> json) { return AuditLogCheckpointPermissionCreatedData(
  projectId: json['project_id'] as String?,
  fineTunedModelCheckpoint: json['fine_tuned_model_checkpoint'] as String?,
); }

/// The ID of the project that the checkpoint permission was created for.
final String? projectId;

/// The ID of the fine-tuned model checkpoint.
final String? fineTunedModelCheckpoint;

Map<String, dynamic> toJson() { return {
  'project_id': ?projectId,
  'fine_tuned_model_checkpoint': ?fineTunedModelCheckpoint,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'project_id', 'fine_tuned_model_checkpoint'}.contains(key)); } 
AuditLogCheckpointPermissionCreatedData copyWith({String Function()? projectId, String Function()? fineTunedModelCheckpoint, }) { return AuditLogCheckpointPermissionCreatedData(
  projectId: projectId != null ? projectId() : this.projectId,
  fineTunedModelCheckpoint: fineTunedModelCheckpoint != null ? fineTunedModelCheckpoint() : this.fineTunedModelCheckpoint,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogCheckpointPermissionCreatedData &&
          projectId == other.projectId &&
          fineTunedModelCheckpoint == other.fineTunedModelCheckpoint; } 
@override int get hashCode { return Object.hash(projectId, fineTunedModelCheckpoint); } 
@override String toString() { return 'AuditLogCheckpointPermissionCreatedData(projectId: $projectId, fineTunedModelCheckpoint: $fineTunedModelCheckpoint)'; } 
 }
