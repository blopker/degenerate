// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleDetailedVariant7Type {const RepositoryRuleDetailedVariant7Type._(this.value);

factory RepositoryRuleDetailedVariant7Type.fromJson(String json) { return switch (json) {
  'required_signatures' => requiredSignatures,
  _ => RepositoryRuleDetailedVariant7Type._(json),
}; }

static const RepositoryRuleDetailedVariant7Type requiredSignatures = RepositoryRuleDetailedVariant7Type._('required_signatures');

static const List<RepositoryRuleDetailedVariant7Type> values = [requiredSignatures];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant7Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant7Type($value)'; } 
 }
/// The type of source for the ruleset that includes this rule.
@immutable final class RepositoryRuleDetailedVariant7RulesetSourceType {const RepositoryRuleDetailedVariant7RulesetSourceType._(this.value);

factory RepositoryRuleDetailedVariant7RulesetSourceType.fromJson(String json) { return switch (json) {
  'Repository' => repository,
  'Organization' => organization,
  _ => RepositoryRuleDetailedVariant7RulesetSourceType._(json),
}; }

static const RepositoryRuleDetailedVariant7RulesetSourceType repository = RepositoryRuleDetailedVariant7RulesetSourceType._('Repository');

static const RepositoryRuleDetailedVariant7RulesetSourceType organization = RepositoryRuleDetailedVariant7RulesetSourceType._('Organization');

static const List<RepositoryRuleDetailedVariant7RulesetSourceType> values = [repository, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant7RulesetSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant7RulesetSourceType($value)'; } 
 }
/// User-defined metadata to store domain-specific information limited to 8 keys with scalar values.
@immutable final class RepositoryRuleDetailedVariant7 {const RepositoryRuleDetailedVariant7({required this.type, this.rulesetSourceType, this.rulesetSource, this.rulesetId, });

factory RepositoryRuleDetailedVariant7.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant7(
  type: RepositoryRuleDetailedVariant7Type.fromJson(json['type'] as String),
  rulesetSourceType: json['ruleset_source_type'] != null ? RepositoryRuleDetailedVariant7RulesetSourceType.fromJson(json['ruleset_source_type'] as String) : null,
  rulesetSource: json['ruleset_source'] as String?,
  rulesetId: json['ruleset_id'] != null ? (json['ruleset_id'] as num).toInt() : null,
); }

final RepositoryRuleDetailedVariant7Type type;

/// The type of source for the ruleset that includes this rule.
final RepositoryRuleDetailedVariant7RulesetSourceType? rulesetSourceType;

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
RepositoryRuleDetailedVariant7 copyWith({RepositoryRuleDetailedVariant7Type? type, RepositoryRuleDetailedVariant7RulesetSourceType Function()? rulesetSourceType, String Function()? rulesetSource, int Function()? rulesetId, }) { return RepositoryRuleDetailedVariant7(
  type: type ?? this.type,
  rulesetSourceType: rulesetSourceType != null ? rulesetSourceType() : this.rulesetSourceType,
  rulesetSource: rulesetSource != null ? rulesetSource() : this.rulesetSource,
  rulesetId: rulesetId != null ? rulesetId() : this.rulesetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant7 &&
          type == other.type &&
          rulesetSourceType == other.rulesetSourceType &&
          rulesetSource == other.rulesetSource &&
          rulesetId == other.rulesetId; } 
@override int get hashCode { return Object.hash(type, rulesetSourceType, rulesetSource, rulesetId); } 
@override String toString() { return 'RepositoryRuleDetailedVariant7(type: $type, rulesetSourceType: $rulesetSourceType, rulesetSource: $rulesetSource, rulesetId: $rulesetId)'; } 
 }
