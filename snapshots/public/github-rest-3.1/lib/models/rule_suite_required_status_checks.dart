// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rule_suite_required_status_checks_checks.dart';/// Metadata for a required status checks rule evaluation result.
@immutable final class RuleSuiteRequiredStatusChecks {const RuleSuiteRequiredStatusChecks({this.checks});

factory RuleSuiteRequiredStatusChecks.fromJson(Map<String, dynamic> json) { return RuleSuiteRequiredStatusChecks(
  checks: (json['checks'] as List<dynamic>?)?.map((e) => RuleSuiteRequiredStatusChecksChecks.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The status checks associated with the rule evaluation.
final List<RuleSuiteRequiredStatusChecksChecks>? checks;

Map<String, dynamic> toJson() { return {
  if (checks != null) 'checks': checks?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'checks'}.contains(key)); } 
RuleSuiteRequiredStatusChecks copyWith({List<RuleSuiteRequiredStatusChecksChecks> Function()? checks}) { return RuleSuiteRequiredStatusChecks(
  checks: checks != null ? checks() : this.checks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RuleSuiteRequiredStatusChecks &&
          listEquals(checks, other.checks); } 
@override int get hashCode { return Object.hashAll(checks ?? const []).hashCode; } 
@override String toString() { return 'RuleSuiteRequiredStatusChecks(checks: $checks)'; } 
 }
