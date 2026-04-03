// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'page_shield_policy_action.dart';import 'page_shield_policy_description.dart';import 'page_shield_policy_enabled.dart';import 'page_shield_policy_expression.dart';import 'page_shield_policy_value.dart';@immutable final class PageShieldUpdatePolicyRequest {const PageShieldUpdatePolicyRequest({this.action, this.description, this.enabled, this.expression, this.value, });

factory PageShieldUpdatePolicyRequest.fromJson(Map<String, dynamic> json) { return PageShieldUpdatePolicyRequest(
  action: json['action'] != null ? PageShieldPolicyAction.fromJson(json['action'] as String) : null,
  description: json['description'] != null ? PageShieldPolicyDescription.fromJson(json['description'] as String) : null,
  enabled: json['enabled'] != null ? PageShieldPolicyEnabled.fromJson(json['enabled'] as bool) : null,
  expression: json['expression'] != null ? PageShieldPolicyExpression.fromJson(json['expression'] as String) : null,
  value: json['value'] != null ? PageShieldPolicyValue.fromJson(json['value'] as String) : null,
); }

/// The action to take if the expression matches
final PageShieldPolicyAction? action;

/// A description for the policy
final PageShieldPolicyDescription? description;

/// Whether the policy is enabled
final PageShieldPolicyEnabled? enabled;

/// The expression which must match for the policy to be applied, using the Cloudflare Firewall rule expression syntax
final PageShieldPolicyExpression? expression;

/// The policy which will be applied
final PageShieldPolicyValue? value;

Map<String, dynamic> toJson() { return {
  if (action != null) 'action': action?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (expression != null) 'expression': expression?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'action', 'description', 'enabled', 'expression', 'value'}.contains(key)); } 
PageShieldUpdatePolicyRequest copyWith({PageShieldPolicyAction Function()? action, PageShieldPolicyDescription Function()? description, PageShieldPolicyEnabled Function()? enabled, PageShieldPolicyExpression Function()? expression, PageShieldPolicyValue Function()? value, }) { return PageShieldUpdatePolicyRequest(
  action: action != null ? action() : this.action,
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  expression: expression != null ? expression() : this.expression,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldUpdatePolicyRequest &&
          action == other.action &&
          description == other.description &&
          enabled == other.enabled &&
          expression == other.expression &&
          value == other.value; } 
@override int get hashCode { return Object.hash(action, description, enabled, expression, value); } 
@override String toString() { return 'PageShieldUpdatePolicyRequest(action: $action, description: $description, enabled: $enabled, expression: $expression, value: $value)'; } 
 }
