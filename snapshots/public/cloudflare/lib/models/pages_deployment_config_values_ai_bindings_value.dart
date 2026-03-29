// GENERATED CODE - DO NOT MODIFY BY HAND

/// AI binding.
final class PagesDeploymentConfigValuesAiBindingsValue {const PagesDeploymentConfigValuesAiBindingsValue({required this.projectId});

factory PagesDeploymentConfigValuesAiBindingsValue.fromJson(Map<String, dynamic> json) { return PagesDeploymentConfigValuesAiBindingsValue(
  projectId: json['project_id'] as String,
); }

final String projectId;

Map<String, dynamic> toJson() { return {
  'project_id': projectId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('project_id') && json['project_id'] is String; } 
PagesDeploymentConfigValuesAiBindingsValue copyWith({String? projectId}) { return PagesDeploymentConfigValuesAiBindingsValue(
  projectId: projectId ?? this.projectId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentConfigValuesAiBindingsValue &&
          projectId == other.projectId; } 
@override int get hashCode { return projectId.hashCode; } 
@override String toString() { return 'PagesDeploymentConfigValuesAiBindingsValue(projectId: $projectId)'; } 
 }
