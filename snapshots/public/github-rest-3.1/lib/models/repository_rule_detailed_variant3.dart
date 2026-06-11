// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleDetailedVariant3Type {const RepositoryRuleDetailedVariant3Type._(this.value);

factory RepositoryRuleDetailedVariant3Type.fromJson(String json) { return switch (json) {
  'deletion' => deletion,
  _ => RepositoryRuleDetailedVariant3Type._(json),
}; }

static const RepositoryRuleDetailedVariant3Type deletion = RepositoryRuleDetailedVariant3Type._('deletion');

static const List<RepositoryRuleDetailedVariant3Type> values = [deletion];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant3Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant3Type($value)'; } 
 }
/// The type of source for the ruleset that includes this rule.
@immutable final class RepositoryRuleDetailedVariant3RulesetSourceType {const RepositoryRuleDetailedVariant3RulesetSourceType._(this.value);

factory RepositoryRuleDetailedVariant3RulesetSourceType.fromJson(String json) { return switch (json) {
  'Repository' => repository,
  'Organization' => organization,
  _ => RepositoryRuleDetailedVariant3RulesetSourceType._(json),
}; }

static const RepositoryRuleDetailedVariant3RulesetSourceType repository = RepositoryRuleDetailedVariant3RulesetSourceType._('Repository');

static const RepositoryRuleDetailedVariant3RulesetSourceType organization = RepositoryRuleDetailedVariant3RulesetSourceType._('Organization');

static const List<RepositoryRuleDetailedVariant3RulesetSourceType> values = [repository, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant3RulesetSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant3RulesetSourceType($value)'; } 
 }
/// User-defined metadata to store domain-specific information limited to 8 keys with scalar values.
@immutable final class RepositoryRuleDetailedVariant3 {const RepositoryRuleDetailedVariant3({required this.type, this.rulesetSourceType, this.rulesetSource, this.rulesetId, });

factory RepositoryRuleDetailedVariant3.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant3(
  type: RepositoryRuleDetailedVariant3Type.fromJson(json['type'] as String),
  rulesetSourceType: json['ruleset_source_type'] != null ? RepositoryRuleDetailedVariant3RulesetSourceType.fromJson(json['ruleset_source_type'] as String) : null,
  rulesetSource: json['ruleset_source'] as String?,
  rulesetId: json['ruleset_id'] != null ? (json['ruleset_id'] as num).toInt() : null,
); }

final RepositoryRuleDetailedVariant3Type type;

/// The type of source for the ruleset that includes this rule.
final RepositoryRuleDetailedVariant3RulesetSourceType? rulesetSourceType;

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
RepositoryRuleDetailedVariant3 copyWith({RepositoryRuleDetailedVariant3Type? type, RepositoryRuleDetailedVariant3RulesetSourceType Function()? rulesetSourceType, String Function()? rulesetSource, int Function()? rulesetId, }) { return RepositoryRuleDetailedVariant3(
  type: type ?? this.type,
  rulesetSourceType: rulesetSourceType != null ? rulesetSourceType() : this.rulesetSourceType,
  rulesetSource: rulesetSource != null ? rulesetSource() : this.rulesetSource,
  rulesetId: rulesetId != null ? rulesetId() : this.rulesetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant3 &&
          type == other.type &&
          rulesetSourceType == other.rulesetSourceType &&
          rulesetSource == other.rulesetSource &&
          rulesetId == other.rulesetId; } 
@override int get hashCode { return Object.hash(type, rulesetSourceType, rulesetSource, rulesetId); } 
@override String toString() { return 'RepositoryRuleDetailedVariant3(type: $type, rulesetSourceType: $rulesetSourceType, rulesetSource: $rulesetSource, rulesetId: $rulesetId)'; } 
 }
