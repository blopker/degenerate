// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The operator to use for matching.
@immutable final class RepositoryRuleCommitAuthorEmailPatternParametersOperator {const RepositoryRuleCommitAuthorEmailPatternParametersOperator._(this.value);

factory RepositoryRuleCommitAuthorEmailPatternParametersOperator.fromJson(String json) { return switch (json) {
  'starts_with' => startsWith,
  'ends_with' => endsWith,
  'contains' => contains,
  'regex' => regex,
  _ => RepositoryRuleCommitAuthorEmailPatternParametersOperator._(json),
}; }

static const RepositoryRuleCommitAuthorEmailPatternParametersOperator startsWith = RepositoryRuleCommitAuthorEmailPatternParametersOperator._('starts_with');

static const RepositoryRuleCommitAuthorEmailPatternParametersOperator endsWith = RepositoryRuleCommitAuthorEmailPatternParametersOperator._('ends_with');

static const RepositoryRuleCommitAuthorEmailPatternParametersOperator contains = RepositoryRuleCommitAuthorEmailPatternParametersOperator._('contains');

static const RepositoryRuleCommitAuthorEmailPatternParametersOperator regex = RepositoryRuleCommitAuthorEmailPatternParametersOperator._('regex');

static const List<RepositoryRuleCommitAuthorEmailPatternParametersOperator> values = [startsWith, endsWith, contains, regex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleCommitAuthorEmailPatternParametersOperator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleCommitAuthorEmailPatternParametersOperator($value)'; } 
 }
@immutable final class RepositoryRuleCommitAuthorEmailPatternParameters {const RepositoryRuleCommitAuthorEmailPatternParameters({required this.$operator, required this.pattern, this.name, this.negate, });

factory RepositoryRuleCommitAuthorEmailPatternParameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleCommitAuthorEmailPatternParameters(
  name: json['name'] as String?,
  negate: json['negate'] as bool?,
  $operator: RepositoryRuleCommitAuthorEmailPatternParametersOperator.fromJson(json['operator'] as String),
  pattern: json['pattern'] as String,
); }

/// How this rule appears when configuring it.
final String? name;

/// If true, the rule will fail if the pattern matches.
final bool? negate;

/// The operator to use for matching.
final RepositoryRuleCommitAuthorEmailPatternParametersOperator $operator;

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
RepositoryRuleCommitAuthorEmailPatternParameters copyWith({String Function()? name, bool Function()? negate, RepositoryRuleCommitAuthorEmailPatternParametersOperator? $operator, String? pattern, }) { return RepositoryRuleCommitAuthorEmailPatternParameters(
  name: name != null ? name() : this.name,
  negate: negate != null ? negate() : this.negate,
  $operator: $operator ?? this.$operator,
  pattern: pattern ?? this.pattern,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleCommitAuthorEmailPatternParameters &&
          name == other.name &&
          negate == other.negate &&
          $operator == other.$operator &&
          pattern == other.pattern; } 
@override int get hashCode { return Object.hash(name, negate, $operator, pattern); } 
@override String toString() { return 'RepositoryRuleCommitAuthorEmailPatternParameters(name: $name, negate: $negate, \$operator: ${$operator}, pattern: $pattern)'; } 
 }
