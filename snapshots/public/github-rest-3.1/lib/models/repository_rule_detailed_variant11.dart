// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_detailed_variant11_parameters.dart';@immutable final class RepositoryRuleDetailedVariant11Type {const RepositoryRuleDetailedVariant11Type._(this.value);

factory RepositoryRuleDetailedVariant11Type.fromJson(String json) { return switch (json) {
  'commit_message_pattern' => commitMessagePattern,
  _ => RepositoryRuleDetailedVariant11Type._(json),
}; }

static const RepositoryRuleDetailedVariant11Type commitMessagePattern = RepositoryRuleDetailedVariant11Type._('commit_message_pattern');

static const List<RepositoryRuleDetailedVariant11Type> values = [commitMessagePattern];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant11Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant11Type($value)'; } 
 }
/// The type of source for the ruleset that includes this rule.
@immutable final class RepositoryRuleDetailedVariant11RulesetSourceType {const RepositoryRuleDetailedVariant11RulesetSourceType._(this.value);

factory RepositoryRuleDetailedVariant11RulesetSourceType.fromJson(String json) { return switch (json) {
  'Repository' => repository,
  'Organization' => organization,
  _ => RepositoryRuleDetailedVariant11RulesetSourceType._(json),
}; }

static const RepositoryRuleDetailedVariant11RulesetSourceType repository = RepositoryRuleDetailedVariant11RulesetSourceType._('Repository');

static const RepositoryRuleDetailedVariant11RulesetSourceType organization = RepositoryRuleDetailedVariant11RulesetSourceType._('Organization');

static const List<RepositoryRuleDetailedVariant11RulesetSourceType> values = [repository, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant11RulesetSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant11RulesetSourceType($value)'; } 
 }
/// User-defined metadata to store domain-specific information limited to 8 keys with scalar values.
@immutable final class RepositoryRuleDetailedVariant11 {const RepositoryRuleDetailedVariant11({required this.type, this.parameters, this.rulesetSourceType, this.rulesetSource, this.rulesetId, });

factory RepositoryRuleDetailedVariant11.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant11(
  type: RepositoryRuleDetailedVariant11Type.fromJson(json['type'] as String),
  parameters: json['parameters'] != null ? RepositoryRuleDetailedVariant11Parameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
  rulesetSourceType: json['ruleset_source_type'] != null ? RepositoryRuleDetailedVariant11RulesetSourceType.fromJson(json['ruleset_source_type'] as String) : null,
  rulesetSource: json['ruleset_source'] as String?,
  rulesetId: json['ruleset_id'] != null ? (json['ruleset_id'] as num).toInt() : null,
); }

final RepositoryRuleDetailedVariant11Type type;

final RepositoryRuleDetailedVariant11Parameters? parameters;

/// The type of source for the ruleset that includes this rule.
final RepositoryRuleDetailedVariant11RulesetSourceType? rulesetSourceType;

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
RepositoryRuleDetailedVariant11 copyWith({RepositoryRuleDetailedVariant11Type? type, RepositoryRuleDetailedVariant11Parameters Function()? parameters, RepositoryRuleDetailedVariant11RulesetSourceType Function()? rulesetSourceType, String Function()? rulesetSource, int Function()? rulesetId, }) { return RepositoryRuleDetailedVariant11(
  type: type ?? this.type,
  parameters: parameters != null ? parameters() : this.parameters,
  rulesetSourceType: rulesetSourceType != null ? rulesetSourceType() : this.rulesetSourceType,
  rulesetSource: rulesetSource != null ? rulesetSource() : this.rulesetSource,
  rulesetId: rulesetId != null ? rulesetId() : this.rulesetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant11 &&
          type == other.type &&
          parameters == other.parameters &&
          rulesetSourceType == other.rulesetSourceType &&
          rulesetSource == other.rulesetSource &&
          rulesetId == other.rulesetId; } 
@override int get hashCode { return Object.hash(type, parameters, rulesetSourceType, rulesetSource, rulesetId); } 
@override String toString() { return 'RepositoryRuleDetailedVariant11(type: $type, parameters: $parameters, rulesetSourceType: $rulesetSourceType, rulesetSource: $rulesetSource, rulesetId: $rulesetId)'; } 
 }
