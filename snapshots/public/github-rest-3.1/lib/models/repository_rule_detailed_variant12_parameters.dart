// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The operator to use for matching.
@immutable final class RepositoryRuleDetailedVariant12ParametersOperator {const RepositoryRuleDetailedVariant12ParametersOperator._(this.value);

factory RepositoryRuleDetailedVariant12ParametersOperator.fromJson(String json) { return switch (json) {
  'starts_with' => startsWith,
  'ends_with' => endsWith,
  'contains' => contains,
  'regex' => regex,
  _ => RepositoryRuleDetailedVariant12ParametersOperator._(json),
}; }

static const RepositoryRuleDetailedVariant12ParametersOperator startsWith = RepositoryRuleDetailedVariant12ParametersOperator._('starts_with');

static const RepositoryRuleDetailedVariant12ParametersOperator endsWith = RepositoryRuleDetailedVariant12ParametersOperator._('ends_with');

static const RepositoryRuleDetailedVariant12ParametersOperator contains = RepositoryRuleDetailedVariant12ParametersOperator._('contains');

static const RepositoryRuleDetailedVariant12ParametersOperator regex = RepositoryRuleDetailedVariant12ParametersOperator._('regex');

static const List<RepositoryRuleDetailedVariant12ParametersOperator> values = [startsWith, endsWith, contains, regex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant12ParametersOperator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant12ParametersOperator($value)'; } 
 }
@immutable final class RepositoryRuleDetailedVariant12Parameters {const RepositoryRuleDetailedVariant12Parameters({required this.$operator, required this.pattern, this.name, this.negate, });

factory RepositoryRuleDetailedVariant12Parameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant12Parameters(
  name: json['name'] as String?,
  negate: json['negate'] as bool?,
  $operator: RepositoryRuleDetailedVariant12ParametersOperator.fromJson(json['operator'] as String),
  pattern: json['pattern'] as String,
); }

/// How this rule appears when configuring it.
final String? name;

/// If true, the rule will fail if the pattern matches.
final bool? negate;

/// The operator to use for matching.
final RepositoryRuleDetailedVariant12ParametersOperator $operator;

/// The pattern to match with.
final String pattern;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'negate': ?negate,
  'operator': $operator.toJson(),
  'pattern': pattern,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('operator') &&
      json.containsKey('pattern') && json['pattern'] is String; } 
RepositoryRuleDetailedVariant12Parameters copyWith({String Function()? name, bool Function()? negate, RepositoryRuleDetailedVariant12ParametersOperator? $operator, String? pattern, }) { return RepositoryRuleDetailedVariant12Parameters(
  name: name != null ? name() : this.name,
  negate: negate != null ? negate() : this.negate,
  $operator: $operator ?? this.$operator,
  pattern: pattern ?? this.pattern,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant12Parameters &&
          name == other.name &&
          negate == other.negate &&
          $operator == other.$operator &&
          pattern == other.pattern; } 
@override int get hashCode { return Object.hash(name, negate, $operator, pattern); } 
@override String toString() { return 'RepositoryRuleDetailedVariant12Parameters(name: $name, negate: $negate, \$operator: ${$operator}, pattern: $pattern)'; } 
 }
