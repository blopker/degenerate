// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleDetailedVariant10Type {const RepositoryRuleDetailedVariant10Type._(this.value);

factory RepositoryRuleDetailedVariant10Type.fromJson(String json) { return switch (json) {
  'non_fast_forward' => nonFastForward,
  _ => RepositoryRuleDetailedVariant10Type._(json),
}; }

static const RepositoryRuleDetailedVariant10Type nonFastForward = RepositoryRuleDetailedVariant10Type._('non_fast_forward');

static const List<RepositoryRuleDetailedVariant10Type> values = [nonFastForward];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant10Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant10Type($value)'; } 
 }
/// The type of source for the ruleset that includes this rule.
@immutable final class RepositoryRuleDetailedVariant10RulesetSourceType {const RepositoryRuleDetailedVariant10RulesetSourceType._(this.value);

factory RepositoryRuleDetailedVariant10RulesetSourceType.fromJson(String json) { return switch (json) {
  'Repository' => repository,
  'Organization' => organization,
  _ => RepositoryRuleDetailedVariant10RulesetSourceType._(json),
}; }

static const RepositoryRuleDetailedVariant10RulesetSourceType repository = RepositoryRuleDetailedVariant10RulesetSourceType._('Repository');

static const RepositoryRuleDetailedVariant10RulesetSourceType organization = RepositoryRuleDetailedVariant10RulesetSourceType._('Organization');

static const List<RepositoryRuleDetailedVariant10RulesetSourceType> values = [repository, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant10RulesetSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant10RulesetSourceType($value)'; } 
 }
/// User-defined metadata to store domain-specific information limited to 8 keys with scalar values.
@immutable final class RepositoryRuleDetailedVariant10 {const RepositoryRuleDetailedVariant10({required this.type, this.rulesetSourceType, this.rulesetSource, this.rulesetId, });

factory RepositoryRuleDetailedVariant10.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant10(
  type: RepositoryRuleDetailedVariant10Type.fromJson(json['type'] as String),
  rulesetSourceType: json['ruleset_source_type'] != null ? RepositoryRuleDetailedVariant10RulesetSourceType.fromJson(json['ruleset_source_type'] as String) : null,
  rulesetSource: json['ruleset_source'] as String?,
  rulesetId: json['ruleset_id'] != null ? (json['ruleset_id'] as num).toInt() : null,
); }

final RepositoryRuleDetailedVariant10Type type;

/// The type of source for the ruleset that includes this rule.
final RepositoryRuleDetailedVariant10RulesetSourceType? rulesetSourceType;

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
RepositoryRuleDetailedVariant10 copyWith({RepositoryRuleDetailedVariant10Type? type, RepositoryRuleDetailedVariant10RulesetSourceType Function()? rulesetSourceType, String Function()? rulesetSource, int Function()? rulesetId, }) { return RepositoryRuleDetailedVariant10(
  type: type ?? this.type,
  rulesetSourceType: rulesetSourceType != null ? rulesetSourceType() : this.rulesetSourceType,
  rulesetSource: rulesetSource != null ? rulesetSource() : this.rulesetSource,
  rulesetId: rulesetId != null ? rulesetId() : this.rulesetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant10 &&
          type == other.type &&
          rulesetSourceType == other.rulesetSourceType &&
          rulesetSource == other.rulesetSource &&
          rulesetId == other.rulesetId; } 
@override int get hashCode { return Object.hash(type, rulesetSourceType, rulesetSource, rulesetId); } 
@override String toString() { return 'RepositoryRuleDetailedVariant10(type: $type, rulesetSourceType: $rulesetSourceType, rulesetSource: $rulesetSource, rulesetId: $rulesetId)'; } 
 }
