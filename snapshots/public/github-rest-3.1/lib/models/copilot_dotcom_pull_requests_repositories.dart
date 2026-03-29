// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'copilot_dotcom_pull_requests_repositories_models.dart';final class CopilotDotcomPullRequestsRepositories {const CopilotDotcomPullRequestsRepositories({this.name, this.totalEngagedUsers, this.models, });

factory CopilotDotcomPullRequestsRepositories.fromJson(Map<String, dynamic> json) { return CopilotDotcomPullRequestsRepositories(
  name: json['name'] as String?,
  totalEngagedUsers: json['total_engaged_users'] != null ? (json['total_engaged_users'] as num).toInt() : null,
  models: (json['models'] as List<dynamic>?)?.map((e) => CopilotDotcomPullRequestsRepositoriesModels.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Repository name
final String? name;

/// The number of users who generated pull request summaries using Copilot for Pull Requests in the given repository.
final int? totalEngagedUsers;

/// List of model metrics for custom models and the default model.
final List<CopilotDotcomPullRequestsRepositoriesModels>? models;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'total_engaged_users': ?totalEngagedUsers,
  if (models != null) 'models': models?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CopilotDotcomPullRequestsRepositories copyWith({String Function()? name, int Function()? totalEngagedUsers, List<CopilotDotcomPullRequestsRepositoriesModels> Function()? models, }) { return CopilotDotcomPullRequestsRepositories(
  name: name != null ? name() : this.name,
  totalEngagedUsers: totalEngagedUsers != null ? totalEngagedUsers() : this.totalEngagedUsers,
  models: models != null ? models() : this.models,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotDotcomPullRequestsRepositories &&
          name == other.name &&
          totalEngagedUsers == other.totalEngagedUsers &&
          listEquals(models, other.models); } 
@override int get hashCode { return Object.hash(name, totalEngagedUsers, Object.hashAll(models ?? const [])); } 
@override String toString() { return 'CopilotDotcomPullRequestsRepositories(name: $name, totalEngagedUsers: $totalEngagedUsers, models: $models)'; } 
 }
