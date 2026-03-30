// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'copilot_dotcom_chat_models.dart';/// Usage metrics for Copilot Chat in GitHub.com
final class CopilotDotcomChat {const CopilotDotcomChat({this.totalEngagedUsers, this.models, this.additionalProperties = const {}, });

factory CopilotDotcomChat.fromJson(Map<String, dynamic> json) { return CopilotDotcomChat(
  totalEngagedUsers: json['total_engaged_users'] != null ? (json['total_engaged_users'] as num).toInt() : null,
  models: (json['models'] as List<dynamic>?)?.map((e) => CopilotDotcomChatModels.fromJson(e as Map<String, dynamic>)).toList(),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'total_engaged_users', 'models'}.contains(e.key))),
); }

/// Total number of users who prompted Copilot Chat on github.com at least once.
final int? totalEngagedUsers;

/// List of model metrics for a custom models and the default model.
final List<CopilotDotcomChatModels>? models;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'total_engaged_users': ?totalEngagedUsers,
  if (models != null) 'models': models?.map((e) => e.toJson()).toList(),
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total_engaged_users', 'models'}.contains(key)); } 
CopilotDotcomChat copyWith({int Function()? totalEngagedUsers, List<CopilotDotcomChatModels> Function()? models, Map<String, dynamic>? additionalProperties, }) { return CopilotDotcomChat(
  totalEngagedUsers: totalEngagedUsers != null ? totalEngagedUsers() : this.totalEngagedUsers,
  models: models != null ? models() : this.models,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotDotcomChat &&
          totalEngagedUsers == other.totalEngagedUsers &&
          listEquals(models, other.models) &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(totalEngagedUsers, Object.hashAll(models ?? const []), Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'CopilotDotcomChat(totalEngagedUsers: $totalEngagedUsers, models: $models, additionalProperties: $additionalProperties)'; } 
 }
