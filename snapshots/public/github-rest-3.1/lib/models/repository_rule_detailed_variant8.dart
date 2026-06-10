// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_detailed_variant8_parameters.dart';@immutable final class RepositoryRuleDetailedVariant8Type {const RepositoryRuleDetailedVariant8Type._(this.value);

factory RepositoryRuleDetailedVariant8Type.fromJson(String json) { return switch (json) {
  'pull_request' => pullRequest,
  _ => RepositoryRuleDetailedVariant8Type._(json),
}; }

static const RepositoryRuleDetailedVariant8Type pullRequest = RepositoryRuleDetailedVariant8Type._('pull_request');

static const List<RepositoryRuleDetailedVariant8Type> values = [pullRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant8Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant8Type($value)'; } 
 }
/// The type of source for the ruleset that includes this rule.
@immutable final class RepositoryRuleDetailedVariant8RulesetSourceType {const RepositoryRuleDetailedVariant8RulesetSourceType._(this.value);

factory RepositoryRuleDetailedVariant8RulesetSourceType.fromJson(String json) { return switch (json) {
  'Repository' => repository,
  'Organization' => organization,
  _ => RepositoryRuleDetailedVariant8RulesetSourceType._(json),
}; }

static const RepositoryRuleDetailedVariant8RulesetSourceType repository = RepositoryRuleDetailedVariant8RulesetSourceType._('Repository');

static const RepositoryRuleDetailedVariant8RulesetSourceType organization = RepositoryRuleDetailedVariant8RulesetSourceType._('Organization');

static const List<RepositoryRuleDetailedVariant8RulesetSourceType> values = [repository, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant8RulesetSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant8RulesetSourceType($value)'; } 
 }
/// User-defined metadata to store domain-specific information limited to 8 keys with scalar values.
@immutable final class RepositoryRuleDetailedVariant8 {const RepositoryRuleDetailedVariant8({required this.type, this.parameters, this.rulesetSourceType, this.rulesetSource, this.rulesetId, });

factory RepositoryRuleDetailedVariant8.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant8(
  type: RepositoryRuleDetailedVariant8Type.fromJson(json['type'] as String),
  parameters: json['parameters'] != null ? RepositoryRuleDetailedVariant8Parameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
  rulesetSourceType: json['ruleset_source_type'] != null ? RepositoryRuleDetailedVariant8RulesetSourceType.fromJson(json['ruleset_source_type'] as String) : null,
  rulesetSource: json['ruleset_source'] as String?,
  rulesetId: json['ruleset_id'] != null ? (json['ruleset_id'] as num).toInt() : null,
); }

final RepositoryRuleDetailedVariant8Type type;

final RepositoryRuleDetailedVariant8Parameters? parameters;

/// The type of source for the ruleset that includes this rule.
final RepositoryRuleDetailedVariant8RulesetSourceType? rulesetSourceType;

/// The name of the source of the ruleset that includes this rule.
final String? rulesetSource;

/// The ID of the ruleset that includes this rule.
final int? rulesetId;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (parameters != null) 'parameters': parameters?.toJson(),
  if (rulesetSourceType != null) 'ruleset_source_type': rulesetSourceType?.toJson(),
  'ruleset_source': ?rulesetSource,
  'ruleset_id': ?rulesetId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RepositoryRuleDetailedVariant8 copyWith({RepositoryRuleDetailedVariant8Type? type, RepositoryRuleDetailedVariant8Parameters Function()? parameters, RepositoryRuleDetailedVariant8RulesetSourceType Function()? rulesetSourceType, String Function()? rulesetSource, int Function()? rulesetId, }) { return RepositoryRuleDetailedVariant8(
  type: type ?? this.type,
  parameters: parameters != null ? parameters() : this.parameters,
  rulesetSourceType: rulesetSourceType != null ? rulesetSourceType() : this.rulesetSourceType,
  rulesetSource: rulesetSource != null ? rulesetSource() : this.rulesetSource,
  rulesetId: rulesetId != null ? rulesetId() : this.rulesetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant8 &&
          type == other.type &&
          parameters == other.parameters &&
          rulesetSourceType == other.rulesetSourceType &&
          rulesetSource == other.rulesetSource &&
          rulesetId == other.rulesetId; } 
@override int get hashCode { return Object.hash(type, parameters, rulesetSourceType, rulesetSource, rulesetId); } 
@override String toString() { return 'RepositoryRuleDetailedVariant8(type: $type, parameters: $parameters, rulesetSourceType: $rulesetSourceType, rulesetSource: $rulesetSource, rulesetId: $rulesetId)'; } 
 }
