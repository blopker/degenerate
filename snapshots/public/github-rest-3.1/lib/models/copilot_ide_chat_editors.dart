// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'copilot_ide_chat_editors_models.dart';/// Copilot Chat metrics, for active editors.
@immutable final class CopilotIdeChatEditors {const CopilotIdeChatEditors({this.name, this.totalEngagedUsers, this.models, });

factory CopilotIdeChatEditors.fromJson(Map<String, dynamic> json) { return CopilotIdeChatEditors(
  name: json['name'] as String?,
  totalEngagedUsers: json['total_engaged_users'] != null ? (json['total_engaged_users'] as num).toInt() : null,
  models: (json['models'] as List<dynamic>?)?.map((e) => CopilotIdeChatEditorsModels.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Name of the given editor.
final String? name;

/// The number of users who prompted Copilot Chat in the specified editor.
final int? totalEngagedUsers;

/// List of model metrics for custom models and the default model.
final List<CopilotIdeChatEditorsModels>? models;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'total_engaged_users': ?totalEngagedUsers,
  if (models != null) 'models': models?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'total_engaged_users', 'models'}.contains(key)); } 
CopilotIdeChatEditors copyWith({String Function()? name, int Function()? totalEngagedUsers, List<CopilotIdeChatEditorsModels> Function()? models, }) { return CopilotIdeChatEditors(
  name: name != null ? name() : this.name,
  totalEngagedUsers: totalEngagedUsers != null ? totalEngagedUsers() : this.totalEngagedUsers,
  models: models != null ? models() : this.models,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotIdeChatEditors &&
          name == other.name &&
          totalEngagedUsers == other.totalEngagedUsers &&
          listEquals(models, other.models); } 
@override int get hashCode { return Object.hash(name, totalEngagedUsers, Object.hashAll(models ?? const [])); } 
@override String toString() { return 'CopilotIdeChatEditors(name: $name, totalEngagedUsers: $totalEngagedUsers, models: $models)'; } 
 }
