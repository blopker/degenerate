// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_pull_request_parameters.dart';@immutable final class RepositoryRulePullRequestType {const RepositoryRulePullRequestType._(this.value);

factory RepositoryRulePullRequestType.fromJson(String json) { return switch (json) {
  'pull_request' => pullRequest,
  _ => RepositoryRulePullRequestType._(json),
}; }

static const RepositoryRulePullRequestType pullRequest = RepositoryRulePullRequestType._('pull_request');

static const List<RepositoryRulePullRequestType> values = [pullRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRulePullRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRulePullRequestType($value)'; } 
 }
/// Require all commits be made to a non-target branch and submitted via a pull request before they can be merged.
@immutable final class RepositoryRulePullRequest {const RepositoryRulePullRequest({required this.type, this.parameters, });

factory RepositoryRulePullRequest.fromJson(Map<String, dynamic> json) { return RepositoryRulePullRequest(
  type: RepositoryRulePullRequestType.fromJson(json['type'] as String),
  parameters: json['parameters'] != null ? RepositoryRulePullRequestParameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
); }

final RepositoryRulePullRequestType type;

final RepositoryRulePullRequestParameters? parameters;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (parameters != null) 'parameters': parameters?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RepositoryRulePullRequest copyWith({RepositoryRulePullRequestType? type, RepositoryRulePullRequestParameters Function()? parameters, }) { return RepositoryRulePullRequest(
  type: type ?? this.type,
  parameters: parameters != null ? parameters() : this.parameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRulePullRequest &&
          type == other.type &&
          parameters == other.parameters; } 
@override int get hashCode { return Object.hash(type, parameters); } 
@override String toString() { return 'RepositoryRulePullRequest(type: $type, parameters: $parameters)'; } 
 }
