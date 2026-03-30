// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'copilot_ide_code_completions_editors_models.dart';/// Copilot code completion metrics for active editors.
final class CopilotIdeCodeCompletionsEditors {const CopilotIdeCodeCompletionsEditors({this.name, this.totalEngagedUsers, this.models, this.additionalProperties = const {}, });

factory CopilotIdeCodeCompletionsEditors.fromJson(Map<String, dynamic> json) { return CopilotIdeCodeCompletionsEditors(
  name: json['name'] as String?,
  totalEngagedUsers: json['total_engaged_users'] != null ? (json['total_engaged_users'] as num).toInt() : null,
  models: (json['models'] as List<dynamic>?)?.map((e) => CopilotIdeCodeCompletionsEditorsModels.fromJson(e as Map<String, dynamic>)).toList(),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'name', 'total_engaged_users', 'models'}.contains(e.key))),
); }

/// Name of the given editor.
final String? name;

/// Number of users who accepted at least one Copilot code completion suggestion for the given editor. Includes both full and partial acceptances.
final int? totalEngagedUsers;

/// List of model metrics for custom models and the default model.
final List<CopilotIdeCodeCompletionsEditorsModels>? models;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'total_engaged_users': ?totalEngagedUsers,
  if (models != null) 'models': models?.map((e) => e.toJson()).toList(),
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'total_engaged_users', 'models'}.contains(key)); } 
CopilotIdeCodeCompletionsEditors copyWith({String Function()? name, int Function()? totalEngagedUsers, List<CopilotIdeCodeCompletionsEditorsModels> Function()? models, Map<String, dynamic>? additionalProperties, }) { return CopilotIdeCodeCompletionsEditors(
  name: name != null ? name() : this.name,
  totalEngagedUsers: totalEngagedUsers != null ? totalEngagedUsers() : this.totalEngagedUsers,
  models: models != null ? models() : this.models,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotIdeCodeCompletionsEditors &&
          name == other.name &&
          totalEngagedUsers == other.totalEngagedUsers &&
          listEquals(models, other.models) &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(name, totalEngagedUsers, Object.hashAll(models ?? const []), Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'CopilotIdeCodeCompletionsEditors(name: $name, totalEngagedUsers: $totalEngagedUsers, models: $models, additionalProperties: $additionalProperties)'; } 
 }
