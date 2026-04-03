// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_commit_author_email_pattern_parameters.dart';@immutable final class RepositoryRuleCommitAuthorEmailPatternType {const RepositoryRuleCommitAuthorEmailPatternType._(this.value);

factory RepositoryRuleCommitAuthorEmailPatternType.fromJson(String json) { return switch (json) {
  'commit_author_email_pattern' => commitAuthorEmailPattern,
  _ => RepositoryRuleCommitAuthorEmailPatternType._(json),
}; }

static const RepositoryRuleCommitAuthorEmailPatternType commitAuthorEmailPattern = RepositoryRuleCommitAuthorEmailPatternType._('commit_author_email_pattern');

static const List<RepositoryRuleCommitAuthorEmailPatternType> values = [commitAuthorEmailPattern];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleCommitAuthorEmailPatternType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleCommitAuthorEmailPatternType($value)'; } 
 }
/// Parameters to be used for the commit_author_email_pattern rule
@immutable final class RepositoryRuleCommitAuthorEmailPattern {const RepositoryRuleCommitAuthorEmailPattern({required this.type, this.parameters, });

factory RepositoryRuleCommitAuthorEmailPattern.fromJson(Map<String, dynamic> json) { return RepositoryRuleCommitAuthorEmailPattern(
  type: RepositoryRuleCommitAuthorEmailPatternType.fromJson(json['type'] as String),
  parameters: json['parameters'] != null ? RepositoryRuleCommitAuthorEmailPatternParameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
); }

final RepositoryRuleCommitAuthorEmailPatternType type;

final RepositoryRuleCommitAuthorEmailPatternParameters? parameters;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (parameters != null) 'parameters': parameters?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RepositoryRuleCommitAuthorEmailPattern copyWith({RepositoryRuleCommitAuthorEmailPatternType? type, RepositoryRuleCommitAuthorEmailPatternParameters Function()? parameters, }) { return RepositoryRuleCommitAuthorEmailPattern(
  type: type ?? this.type,
  parameters: parameters != null ? parameters() : this.parameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleCommitAuthorEmailPattern &&
          type == other.type &&
          parameters == other.parameters; } 
@override int get hashCode { return Object.hash(type, parameters); } 
@override String toString() { return 'RepositoryRuleCommitAuthorEmailPattern(type: $type, parameters: $parameters)'; } 
 }
