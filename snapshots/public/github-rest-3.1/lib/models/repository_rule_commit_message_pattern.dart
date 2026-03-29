// GENERATED CODE - DO NOT MODIFY BY HAND

import 'repository_rule_commit_message_pattern_parameters.dart';final class RepositoryRuleCommitMessagePatternType {const RepositoryRuleCommitMessagePatternType._(this.value);

factory RepositoryRuleCommitMessagePatternType.fromJson(String json) { return switch (json) {
  'commit_message_pattern' => commitMessagePattern,
  _ => RepositoryRuleCommitMessagePatternType._(json),
}; }

static const RepositoryRuleCommitMessagePatternType commitMessagePattern = RepositoryRuleCommitMessagePatternType._('commit_message_pattern');

static const List<RepositoryRuleCommitMessagePatternType> values = [commitMessagePattern];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleCommitMessagePatternType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleCommitMessagePatternType($value)'; } 
 }
/// Parameters to be used for the commit_message_pattern rule
final class RepositoryRuleCommitMessagePattern {const RepositoryRuleCommitMessagePattern({required this.type, this.parameters, });

factory RepositoryRuleCommitMessagePattern.fromJson(Map<String, dynamic> json) { return RepositoryRuleCommitMessagePattern(
  type: RepositoryRuleCommitMessagePatternType.fromJson(json['type'] as String),
  parameters: json['parameters'] != null ? RepositoryRuleCommitMessagePatternParameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
); }

final RepositoryRuleCommitMessagePatternType type;

final RepositoryRuleCommitMessagePatternParameters? parameters;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (parameters != null) 'parameters': parameters?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RepositoryRuleCommitMessagePattern copyWith({RepositoryRuleCommitMessagePatternType? type, RepositoryRuleCommitMessagePatternParameters Function()? parameters, }) { return RepositoryRuleCommitMessagePattern(
  type: type ?? this.type,
  parameters: parameters != null ? parameters() : this.parameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleCommitMessagePattern &&
          type == other.type &&
          parameters == other.parameters; } 
@override int get hashCode { return Object.hash(type, parameters); } 
@override String toString() { return 'RepositoryRuleCommitMessagePattern(type: $type, parameters: $parameters)'; } 
 }
