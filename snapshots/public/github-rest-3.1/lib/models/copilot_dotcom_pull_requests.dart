// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'copilot_dotcom_pull_requests_repositories.dart';/// Usage metrics for Copilot for pull requests.
@immutable final class CopilotDotcomPullRequests {const CopilotDotcomPullRequests({this.totalEngagedUsers, this.repositories, this.additionalProperties = const {}, });

factory CopilotDotcomPullRequests.fromJson(Map<String, dynamic> json) { return CopilotDotcomPullRequests(
  totalEngagedUsers: json['total_engaged_users'] != null ? (json['total_engaged_users'] as num).toInt() : null,
  repositories: (json['repositories'] as List<dynamic>?)?.map((e) => CopilotDotcomPullRequestsRepositories.fromJson(e as Map<String, dynamic>)).toList(),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'total_engaged_users', 'repositories'}.contains(e.key))),
); }

/// The number of users who used Copilot for Pull Requests on github.com to generate a pull request summary at least once.
final int? totalEngagedUsers;

/// Repositories in which users used Copilot for Pull Requests to generate pull request summaries
final List<CopilotDotcomPullRequestsRepositories>? repositories;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'total_engaged_users': ?totalEngagedUsers,
  if (repositories != null) 'repositories': repositories?.map((e) => e.toJson()).toList(),
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total_engaged_users', 'repositories'}.contains(key)); } 
CopilotDotcomPullRequests copyWith({int Function()? totalEngagedUsers, List<CopilotDotcomPullRequestsRepositories> Function()? repositories, Map<String, dynamic>? additionalProperties, }) { return CopilotDotcomPullRequests(
  totalEngagedUsers: totalEngagedUsers != null ? totalEngagedUsers() : this.totalEngagedUsers,
  repositories: repositories != null ? repositories() : this.repositories,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotDotcomPullRequests &&
          totalEngagedUsers == other.totalEngagedUsers &&
          listEquals(repositories, other.repositories) &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(totalEngagedUsers, Object.hashAll(repositories ?? const []), Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'CopilotDotcomPullRequests(totalEngagedUsers: $totalEngagedUsers, repositories: $repositories, additionalProperties: $additionalProperties)'; } 
 }
