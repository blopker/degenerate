// GENERATED CODE - DO NOT MODIFY BY HAND

import 'page_shield_id.dart';import 'page_shield_policy_action.dart';import 'page_shield_policy_description.dart';import 'page_shield_policy_enabled.dart';import 'page_shield_policy_expression.dart';import 'page_shield_policy_value.dart';final class PageShieldPolicyWithId {const PageShieldPolicyWithId({required this.action, required this.description, required this.enabled, required this.expression, required this.value, required this.id, });

factory PageShieldPolicyWithId.fromJson(Map<String, dynamic> json) { return PageShieldPolicyWithId(
  action: PageShieldPolicyAction.fromJson(json['action'] as String),
  description: PageShieldPolicyDescription.fromJson(json['description'] as String),
  enabled: PageShieldPolicyEnabled.fromJson(json['enabled'] as bool),
  expression: PageShieldPolicyExpression.fromJson(json['expression'] as String),
  value: PageShieldPolicyValue.fromJson(json['value'] as String),
  id: PageShieldId.fromJson(json['id'] as String),
); }

/// The action to take if the expression matches
final PageShieldPolicyAction action;

/// A description for the policy
final PageShieldPolicyDescription description;

/// Whether the policy is enabled
final PageShieldPolicyEnabled enabled;

/// The expression which must match for the policy to be applied, using the Cloudflare Firewall rule expression syntax
final PageShieldPolicyExpression expression;

/// The policy which will be applied
final PageShieldPolicyValue value;

/// Identifier
final PageShieldId id;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'description': description.toJson(),
  'enabled': enabled.toJson(),
  'expression': expression.toJson(),
  'value': value.toJson(),
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('description') &&
      json.containsKey('enabled') &&
      json.containsKey('expression') &&
      json.containsKey('value') &&
      json.containsKey('id'); } 
PageShieldPolicyWithId copyWith({PageShieldPolicyAction? action, PageShieldPolicyDescription? description, PageShieldPolicyEnabled? enabled, PageShieldPolicyExpression? expression, PageShieldPolicyValue? value, PageShieldId? id, }) { return PageShieldPolicyWithId(
  action: action ?? this.action,
  description: description ?? this.description,
  enabled: enabled ?? this.enabled,
  expression: expression ?? this.expression,
  value: value ?? this.value,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldPolicyWithId &&
          action == other.action &&
          description == other.description &&
          enabled == other.enabled &&
          expression == other.expression &&
          value == other.value &&
          id == other.id; } 
@override int get hashCode { return Object.hash(action, description, enabled, expression, value, id); } 
@override String toString() { return 'PageShieldPolicyWithId(action: $action, description: $description, enabled: $enabled, expression: $expression, value: $value, id: $id)'; } 
 }
