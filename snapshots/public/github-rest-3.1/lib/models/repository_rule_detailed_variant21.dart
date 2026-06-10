// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_detailed_variant21_parameters.dart';@immutable final class RepositoryRuleDetailedVariant21Type {const RepositoryRuleDetailedVariant21Type._(this.value);

factory RepositoryRuleDetailedVariant21Type.fromJson(String json) { return switch (json) {
  'code_scanning' => codeScanning,
  _ => RepositoryRuleDetailedVariant21Type._(json),
}; }

static const RepositoryRuleDetailedVariant21Type codeScanning = RepositoryRuleDetailedVariant21Type._('code_scanning');

static const List<RepositoryRuleDetailedVariant21Type> values = [codeScanning];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant21Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant21Type($value)'; } 
 }
/// The type of source for the ruleset that includes this rule.
@immutable final class RepositoryRuleDetailedVariant21RulesetSourceType {const RepositoryRuleDetailedVariant21RulesetSourceType._(this.value);

factory RepositoryRuleDetailedVariant21RulesetSourceType.fromJson(String json) { return switch (json) {
  'Repository' => repository,
  'Organization' => organization,
  _ => RepositoryRuleDetailedVariant21RulesetSourceType._(json),
}; }

static const RepositoryRuleDetailedVariant21RulesetSourceType repository = RepositoryRuleDetailedVariant21RulesetSourceType._('Repository');

static const RepositoryRuleDetailedVariant21RulesetSourceType organization = RepositoryRuleDetailedVariant21RulesetSourceType._('Organization');

static const List<RepositoryRuleDetailedVariant21RulesetSourceType> values = [repository, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant21RulesetSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant21RulesetSourceType($value)'; } 
 }
/// User-defined metadata to store domain-specific information limited to 8 keys with scalar values.
@immutable final class RepositoryRuleDetailedVariant21 {const RepositoryRuleDetailedVariant21({required this.type, this.parameters, this.rulesetSourceType, this.rulesetSource, this.rulesetId, });

factory RepositoryRuleDetailedVariant21.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant21(
  type: RepositoryRuleDetailedVariant21Type.fromJson(json['type'] as String),
  parameters: json['parameters'] != null ? RepositoryRuleDetailedVariant21Parameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
  rulesetSourceType: json['ruleset_source_type'] != null ? RepositoryRuleDetailedVariant21RulesetSourceType.fromJson(json['ruleset_source_type'] as String) : null,
  rulesetSource: json['ruleset_source'] as String?,
  rulesetId: json['ruleset_id'] != null ? (json['ruleset_id'] as num).toInt() : null,
); }

final RepositoryRuleDetailedVariant21Type type;

final RepositoryRuleDetailedVariant21Parameters? parameters;

/// The type of source for the ruleset that includes this rule.
final RepositoryRuleDetailedVariant21RulesetSourceType? rulesetSourceType;

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
RepositoryRuleDetailedVariant21 copyWith({RepositoryRuleDetailedVariant21Type? type, RepositoryRuleDetailedVariant21Parameters Function()? parameters, RepositoryRuleDetailedVariant21RulesetSourceType Function()? rulesetSourceType, String Function()? rulesetSource, int Function()? rulesetId, }) { return RepositoryRuleDetailedVariant21(
  type: type ?? this.type,
  parameters: parameters != null ? parameters() : this.parameters,
  rulesetSourceType: rulesetSourceType != null ? rulesetSourceType() : this.rulesetSourceType,
  rulesetSource: rulesetSource != null ? rulesetSource() : this.rulesetSource,
  rulesetId: rulesetId != null ? rulesetId() : this.rulesetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant21 &&
          type == other.type &&
          parameters == other.parameters &&
          rulesetSourceType == other.rulesetSourceType &&
          rulesetSource == other.rulesetSource &&
          rulesetId == other.rulesetId; } 
@override int get hashCode { return Object.hash(type, parameters, rulesetSourceType, rulesetSource, rulesetId); } 
@override String toString() { return 'RepositoryRuleDetailedVariant21(type: $type, parameters: $parameters, rulesetSourceType: $rulesetSourceType, rulesetSource: $rulesetSource, rulesetId: $rulesetId)'; } 
 }
