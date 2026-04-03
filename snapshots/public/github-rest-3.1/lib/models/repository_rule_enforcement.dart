// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The enforcement level of the ruleset. `evaluate` allows admins to test rules before enforcing them. Admins can view insights on the Rule Insights page (`evaluate` is only available with GitHub Enterprise).
@immutable final class RepositoryRuleEnforcement {const RepositoryRuleEnforcement._(this.value);

factory RepositoryRuleEnforcement.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'active' => active,
  'evaluate' => evaluate,
  _ => RepositoryRuleEnforcement._(json),
}; }

static const RepositoryRuleEnforcement disabled = RepositoryRuleEnforcement._('disabled');

static const RepositoryRuleEnforcement active = RepositoryRuleEnforcement._('active');

static const RepositoryRuleEnforcement evaluate = RepositoryRuleEnforcement._('evaluate');

static const List<RepositoryRuleEnforcement> values = [disabled, active, evaluate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleEnforcement && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleEnforcement($value)'; } 
 }
