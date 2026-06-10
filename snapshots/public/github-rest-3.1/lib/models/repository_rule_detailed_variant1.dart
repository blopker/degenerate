// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleDetailedVariant1Type {const RepositoryRuleDetailedVariant1Type._(this.value);

factory RepositoryRuleDetailedVariant1Type.fromJson(String json) { return switch (json) {
  'creation' => creation,
  _ => RepositoryRuleDetailedVariant1Type._(json),
}; }

static const RepositoryRuleDetailedVariant1Type creation = RepositoryRuleDetailedVariant1Type._('creation');

static const List<RepositoryRuleDetailedVariant1Type> values = [creation];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant1Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant1Type($value)'; } 
 }
/// The type of source for the ruleset that includes this rule.
@immutable final class RepositoryRuleDetailedVariant1RulesetSourceType {const RepositoryRuleDetailedVariant1RulesetSourceType._(this.value);

factory RepositoryRuleDetailedVariant1RulesetSourceType.fromJson(String json) { return switch (json) {
  'Repository' => repository,
  'Organization' => organization,
  _ => RepositoryRuleDetailedVariant1RulesetSourceType._(json),
}; }

static const RepositoryRuleDetailedVariant1RulesetSourceType repository = RepositoryRuleDetailedVariant1RulesetSourceType._('Repository');

static const RepositoryRuleDetailedVariant1RulesetSourceType organization = RepositoryRuleDetailedVariant1RulesetSourceType._('Organization');

static const List<RepositoryRuleDetailedVariant1RulesetSourceType> values = [repository, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant1RulesetSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant1RulesetSourceType($value)'; } 
 }
/// User-defined metadata to store domain-specific information limited to 8 keys with scalar values.
@immutable final class RepositoryRuleDetailedVariant1 {const RepositoryRuleDetailedVariant1({required this.type, this.rulesetSourceType, this.rulesetSource, this.rulesetId, });

factory RepositoryRuleDetailedVariant1.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant1(
  type: RepositoryRuleDetailedVariant1Type.fromJson(json['type'] as String),
  rulesetSourceType: json['ruleset_source_type'] != null ? RepositoryRuleDetailedVariant1RulesetSourceType.fromJson(json['ruleset_source_type'] as String) : null,
  rulesetSource: json['ruleset_source'] as String?,
  rulesetId: json['ruleset_id'] != null ? (json['ruleset_id'] as num).toInt() : null,
); }

final RepositoryRuleDetailedVariant1Type type;

/// The type of source for the ruleset that includes this rule.
final RepositoryRuleDetailedVariant1RulesetSourceType? rulesetSourceType;

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
RepositoryRuleDetailedVariant1 copyWith({RepositoryRuleDetailedVariant1Type? type, RepositoryRuleDetailedVariant1RulesetSourceType Function()? rulesetSourceType, String Function()? rulesetSource, int Function()? rulesetId, }) { return RepositoryRuleDetailedVariant1(
  type: type ?? this.type,
  rulesetSourceType: rulesetSourceType != null ? rulesetSourceType() : this.rulesetSourceType,
  rulesetSource: rulesetSource != null ? rulesetSource() : this.rulesetSource,
  rulesetId: rulesetId != null ? rulesetId() : this.rulesetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant1 &&
          type == other.type &&
          rulesetSourceType == other.rulesetSourceType &&
          rulesetSource == other.rulesetSource &&
          rulesetId == other.rulesetId; } 
@override int get hashCode { return Object.hash(type, rulesetSourceType, rulesetSource, rulesetId); } 
@override String toString() { return 'RepositoryRuleDetailedVariant1(type: $type, rulesetSourceType: $rulesetSourceType, rulesetSource: $rulesetSource, rulesetId: $rulesetId)'; } 
 }
