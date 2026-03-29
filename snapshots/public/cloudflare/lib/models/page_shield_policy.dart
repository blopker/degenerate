// GENERATED CODE - DO NOT MODIFY BY HAND

import 'page_shield_policy_action.dart';import 'page_shield_policy_description.dart';import 'page_shield_policy_enabled.dart';import 'page_shield_policy_expression.dart';import 'page_shield_policy_value.dart';final class PageShieldPolicy {const PageShieldPolicy({required this.action, required this.description, required this.enabled, required this.expression, required this.value, });

factory PageShieldPolicy.fromJson(Map<String, dynamic> json) { return PageShieldPolicy(
  action: PageShieldPolicyAction.fromJson(json['action'] as String),
  description: PageShieldPolicyDescription.fromJson(json['description'] as String),
  enabled: PageShieldPolicyEnabled.fromJson(json['enabled'] as bool),
  expression: PageShieldPolicyExpression.fromJson(json['expression'] as String),
  value: PageShieldPolicyValue.fromJson(json['value'] as String),
); }

final PageShieldPolicyAction action;

final PageShieldPolicyDescription description;

final PageShieldPolicyEnabled enabled;

final PageShieldPolicyExpression expression;

final PageShieldPolicyValue value;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'description': description.toJson(),
  'enabled': enabled.toJson(),
  'expression': expression.toJson(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('description') &&
      json.containsKey('enabled') &&
      json.containsKey('expression') &&
      json.containsKey('value'); } 
PageShieldPolicy copyWith({PageShieldPolicyAction? action, PageShieldPolicyDescription? description, PageShieldPolicyEnabled? enabled, PageShieldPolicyExpression? expression, PageShieldPolicyValue? value, }) { return PageShieldPolicy(
  action: action ?? this.action,
  description: description ?? this.description,
  enabled: enabled ?? this.enabled,
  expression: expression ?? this.expression,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldPolicy &&
          action == other.action &&
          description == other.description &&
          enabled == other.enabled &&
          expression == other.expression &&
          value == other.value; } 
@override int get hashCode { return Object.hash(action, description, enabled, expression, value); } 
@override String toString() { return 'PageShieldPolicy(action: $action, description: $description, enabled: $enabled, expression: $expression, value: $value)'; } 
 }
