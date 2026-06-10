// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_detailed_variant9_parameters.dart';@immutable final class RepositoryRuleDetailedVariant9Type {const RepositoryRuleDetailedVariant9Type._(this.value);

factory RepositoryRuleDetailedVariant9Type.fromJson(String json) { return switch (json) {
  'required_status_checks' => requiredStatusChecks,
  _ => RepositoryRuleDetailedVariant9Type._(json),
}; }

static const RepositoryRuleDetailedVariant9Type requiredStatusChecks = RepositoryRuleDetailedVariant9Type._('required_status_checks');

static const List<RepositoryRuleDetailedVariant9Type> values = [requiredStatusChecks];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant9Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant9Type($value)'; } 
 }
/// The type of source for the ruleset that includes this rule.
@immutable final class RepositoryRuleDetailedVariant9RulesetSourceType {const RepositoryRuleDetailedVariant9RulesetSourceType._(this.value);

factory RepositoryRuleDetailedVariant9RulesetSourceType.fromJson(String json) { return switch (json) {
  'Repository' => repository,
  'Organization' => organization,
  _ => RepositoryRuleDetailedVariant9RulesetSourceType._(json),
}; }

static const RepositoryRuleDetailedVariant9RulesetSourceType repository = RepositoryRuleDetailedVariant9RulesetSourceType._('Repository');

static const RepositoryRuleDetailedVariant9RulesetSourceType organization = RepositoryRuleDetailedVariant9RulesetSourceType._('Organization');

static const List<RepositoryRuleDetailedVariant9RulesetSourceType> values = [repository, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant9RulesetSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant9RulesetSourceType($value)'; } 
 }
/// User-defined metadata to store domain-specific information limited to 8 keys with scalar values.
@immutable final class RepositoryRuleDetailedVariant9 {const RepositoryRuleDetailedVariant9({required this.type, this.parameters, this.rulesetSourceType, this.rulesetSource, this.rulesetId, });

factory RepositoryRuleDetailedVariant9.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant9(
  type: RepositoryRuleDetailedVariant9Type.fromJson(json['type'] as String),
  parameters: json['parameters'] != null ? RepositoryRuleDetailedVariant9Parameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
  rulesetSourceType: json['ruleset_source_type'] != null ? RepositoryRuleDetailedVariant9RulesetSourceType.fromJson(json['ruleset_source_type'] as String) : null,
  rulesetSource: json['ruleset_source'] as String?,
  rulesetId: json['ruleset_id'] != null ? (json['ruleset_id'] as num).toInt() : null,
); }

final RepositoryRuleDetailedVariant9Type type;

final RepositoryRuleDetailedVariant9Parameters? parameters;

/// The type of source for the ruleset that includes this rule.
final RepositoryRuleDetailedVariant9RulesetSourceType? rulesetSourceType;

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
RepositoryRuleDetailedVariant9 copyWith({RepositoryRuleDetailedVariant9Type? type, RepositoryRuleDetailedVariant9Parameters Function()? parameters, RepositoryRuleDetailedVariant9RulesetSourceType Function()? rulesetSourceType, String Function()? rulesetSource, int Function()? rulesetId, }) { return RepositoryRuleDetailedVariant9(
  type: type ?? this.type,
  parameters: parameters != null ? parameters() : this.parameters,
  rulesetSourceType: rulesetSourceType != null ? rulesetSourceType() : this.rulesetSourceType,
  rulesetSource: rulesetSource != null ? rulesetSource() : this.rulesetSource,
  rulesetId: rulesetId != null ? rulesetId() : this.rulesetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant9 &&
          type == other.type &&
          parameters == other.parameters &&
          rulesetSourceType == other.rulesetSourceType &&
          rulesetSource == other.rulesetSource &&
          rulesetId == other.rulesetId; } 
@override int get hashCode { return Object.hash(type, parameters, rulesetSourceType, rulesetSource, rulesetId); } 
@override String toString() { return 'RepositoryRuleDetailedVariant9(type: $type, parameters: $parameters, rulesetSourceType: $rulesetSourceType, rulesetSource: $rulesetSource, rulesetId: $rulesetId)'; } 
 }
