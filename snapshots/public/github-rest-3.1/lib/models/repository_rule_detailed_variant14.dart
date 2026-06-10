// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_detailed_variant14_parameters.dart';@immutable final class RepositoryRuleDetailedVariant14Type {const RepositoryRuleDetailedVariant14Type._(this.value);

factory RepositoryRuleDetailedVariant14Type.fromJson(String json) { return switch (json) {
  'branch_name_pattern' => branchNamePattern,
  _ => RepositoryRuleDetailedVariant14Type._(json),
}; }

static const RepositoryRuleDetailedVariant14Type branchNamePattern = RepositoryRuleDetailedVariant14Type._('branch_name_pattern');

static const List<RepositoryRuleDetailedVariant14Type> values = [branchNamePattern];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant14Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant14Type($value)'; } 
 }
/// The type of source for the ruleset that includes this rule.
@immutable final class RepositoryRuleDetailedVariant14RulesetSourceType {const RepositoryRuleDetailedVariant14RulesetSourceType._(this.value);

factory RepositoryRuleDetailedVariant14RulesetSourceType.fromJson(String json) { return switch (json) {
  'Repository' => repository,
  'Organization' => organization,
  _ => RepositoryRuleDetailedVariant14RulesetSourceType._(json),
}; }

static const RepositoryRuleDetailedVariant14RulesetSourceType repository = RepositoryRuleDetailedVariant14RulesetSourceType._('Repository');

static const RepositoryRuleDetailedVariant14RulesetSourceType organization = RepositoryRuleDetailedVariant14RulesetSourceType._('Organization');

static const List<RepositoryRuleDetailedVariant14RulesetSourceType> values = [repository, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant14RulesetSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant14RulesetSourceType($value)'; } 
 }
/// User-defined metadata to store domain-specific information limited to 8 keys with scalar values.
@immutable final class RepositoryRuleDetailedVariant14 {const RepositoryRuleDetailedVariant14({required this.type, this.parameters, this.rulesetSourceType, this.rulesetSource, this.rulesetId, });

factory RepositoryRuleDetailedVariant14.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant14(
  type: RepositoryRuleDetailedVariant14Type.fromJson(json['type'] as String),
  parameters: json['parameters'] != null ? RepositoryRuleDetailedVariant14Parameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
  rulesetSourceType: json['ruleset_source_type'] != null ? RepositoryRuleDetailedVariant14RulesetSourceType.fromJson(json['ruleset_source_type'] as String) : null,
  rulesetSource: json['ruleset_source'] as String?,
  rulesetId: json['ruleset_id'] != null ? (json['ruleset_id'] as num).toInt() : null,
); }

final RepositoryRuleDetailedVariant14Type type;

final RepositoryRuleDetailedVariant14Parameters? parameters;

/// The type of source for the ruleset that includes this rule.
final RepositoryRuleDetailedVariant14RulesetSourceType? rulesetSourceType;

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
RepositoryRuleDetailedVariant14 copyWith({RepositoryRuleDetailedVariant14Type? type, RepositoryRuleDetailedVariant14Parameters Function()? parameters, RepositoryRuleDetailedVariant14RulesetSourceType Function()? rulesetSourceType, String Function()? rulesetSource, int Function()? rulesetId, }) { return RepositoryRuleDetailedVariant14(
  type: type ?? this.type,
  parameters: parameters != null ? parameters() : this.parameters,
  rulesetSourceType: rulesetSourceType != null ? rulesetSourceType() : this.rulesetSourceType,
  rulesetSource: rulesetSource != null ? rulesetSource() : this.rulesetSource,
  rulesetId: rulesetId != null ? rulesetId() : this.rulesetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant14 &&
          type == other.type &&
          parameters == other.parameters &&
          rulesetSourceType == other.rulesetSourceType &&
          rulesetSource == other.rulesetSource &&
          rulesetId == other.rulesetId; } 
@override int get hashCode { return Object.hash(type, parameters, rulesetSourceType, rulesetSource, rulesetId); } 
@override String toString() { return 'RepositoryRuleDetailedVariant14(type: $type, parameters: $parameters, rulesetSourceType: $rulesetSourceType, rulesetSource: $rulesetSource, rulesetId: $rulesetId)'; } 
 }
