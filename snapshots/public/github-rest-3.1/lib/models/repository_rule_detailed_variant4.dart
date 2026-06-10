// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleDetailedVariant4Type {const RepositoryRuleDetailedVariant4Type._(this.value);

factory RepositoryRuleDetailedVariant4Type.fromJson(String json) { return switch (json) {
  'required_linear_history' => requiredLinearHistory,
  _ => RepositoryRuleDetailedVariant4Type._(json),
}; }

static const RepositoryRuleDetailedVariant4Type requiredLinearHistory = RepositoryRuleDetailedVariant4Type._('required_linear_history');

static const List<RepositoryRuleDetailedVariant4Type> values = [requiredLinearHistory];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant4Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant4Type($value)'; } 
 }
/// The type of source for the ruleset that includes this rule.
@immutable final class RepositoryRuleDetailedVariant4RulesetSourceType {const RepositoryRuleDetailedVariant4RulesetSourceType._(this.value);

factory RepositoryRuleDetailedVariant4RulesetSourceType.fromJson(String json) { return switch (json) {
  'Repository' => repository,
  'Organization' => organization,
  _ => RepositoryRuleDetailedVariant4RulesetSourceType._(json),
}; }

static const RepositoryRuleDetailedVariant4RulesetSourceType repository = RepositoryRuleDetailedVariant4RulesetSourceType._('Repository');

static const RepositoryRuleDetailedVariant4RulesetSourceType organization = RepositoryRuleDetailedVariant4RulesetSourceType._('Organization');

static const List<RepositoryRuleDetailedVariant4RulesetSourceType> values = [repository, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant4RulesetSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant4RulesetSourceType($value)'; } 
 }
/// User-defined metadata to store domain-specific information limited to 8 keys with scalar values.
@immutable final class RepositoryRuleDetailedVariant4 {const RepositoryRuleDetailedVariant4({required this.type, this.rulesetSourceType, this.rulesetSource, this.rulesetId, });

factory RepositoryRuleDetailedVariant4.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant4(
  type: RepositoryRuleDetailedVariant4Type.fromJson(json['type'] as String),
  rulesetSourceType: json['ruleset_source_type'] != null ? RepositoryRuleDetailedVariant4RulesetSourceType.fromJson(json['ruleset_source_type'] as String) : null,
  rulesetSource: json['ruleset_source'] as String?,
  rulesetId: json['ruleset_id'] != null ? (json['ruleset_id'] as num).toInt() : null,
); }

final RepositoryRuleDetailedVariant4Type type;

/// The type of source for the ruleset that includes this rule.
final RepositoryRuleDetailedVariant4RulesetSourceType? rulesetSourceType;

/// The name of the source of the ruleset that includes this rule.
final String? rulesetSource;

/// The ID of the ruleset that includes this rule.
final int? rulesetId;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (rulesetSourceType != null) 'ruleset_source_type': rulesetSourceType?.toJson(),
  'ruleset_source': ?rulesetSource,
  'ruleset_id': ?rulesetId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RepositoryRuleDetailedVariant4 copyWith({RepositoryRuleDetailedVariant4Type? type, RepositoryRuleDetailedVariant4RulesetSourceType Function()? rulesetSourceType, String Function()? rulesetSource, int Function()? rulesetId, }) { return RepositoryRuleDetailedVariant4(
  type: type ?? this.type,
  rulesetSourceType: rulesetSourceType != null ? rulesetSourceType() : this.rulesetSourceType,
  rulesetSource: rulesetSource != null ? rulesetSource() : this.rulesetSource,
  rulesetId: rulesetId != null ? rulesetId() : this.rulesetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant4 &&
          type == other.type &&
          rulesetSourceType == other.rulesetSourceType &&
          rulesetSource == other.rulesetSource &&
          rulesetId == other.rulesetId; } 
@override int get hashCode { return Object.hash(type, rulesetSourceType, rulesetSource, rulesetId); } 
@override String toString() { return 'RepositoryRuleDetailedVariant4(type: $type, rulesetSourceType: $rulesetSourceType, rulesetSource: $rulesetSource, rulesetId: $rulesetId)'; } 
 }
