// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_rule_action.dart';import 'email_rule_enabled.dart';import 'email_rule_matcher.dart';import 'email_rule_name.dart';import 'email_rule_priority.dart';final class EmailUpdateRuleProperties {const EmailUpdateRuleProperties({required this.actions, this.enabled, required this.matchers, this.name, this.priority, });

factory EmailUpdateRuleProperties.fromJson(Map<String, dynamic> json) { return EmailUpdateRuleProperties(
  actions: (json['actions'] as List<dynamic>).map((e) => EmailRuleAction.fromJson(e as Map<String, dynamic>)).toList(),
  enabled: json['enabled'] != null ? EmailRuleEnabled.fromJson(json['enabled'] as bool) : null,
  matchers: (json['matchers'] as List<dynamic>).map((e) => EmailRuleMatcher.fromJson(e as Map<String, dynamic>)).toList(),
  name: json['name'] != null ? EmailRuleName.fromJson(json['name'] as String) : null,
  priority: json['priority'] != null ? EmailRulePriority.fromJson(json['priority'] as num) : null,
); }

/// List actions patterns.
final List<EmailRuleAction> actions;

/// Routing rule status.
final EmailRuleEnabled? enabled;

/// Matching patterns to forward to your actions.
final List<EmailRuleMatcher> matchers;

/// Routing rule name.
final EmailRuleName? name;

/// Priority of the routing rule.
final EmailRulePriority? priority;

Map<String, dynamic> toJson() { return {
  'actions': actions.map((e) => e.toJson()).toList(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  'matchers': matchers.map((e) => e.toJson()).toList(),
  if (name != null) 'name': name?.toJson(),
  if (priority != null) 'priority': priority?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('actions') &&
      json.containsKey('matchers'); } 
EmailUpdateRuleProperties copyWith({List<EmailRuleAction>? actions, EmailRuleEnabled Function()? enabled, List<EmailRuleMatcher>? matchers, EmailRuleName Function()? name, EmailRulePriority Function()? priority, }) { return EmailUpdateRuleProperties(
  actions: actions ?? this.actions,
  enabled: enabled != null ? enabled() : this.enabled,
  matchers: matchers ?? this.matchers,
  name: name != null ? name() : this.name,
  priority: priority != null ? priority() : this.priority,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailUpdateRuleProperties &&
          listEquals(actions, other.actions) &&
          enabled == other.enabled &&
          listEquals(matchers, other.matchers) &&
          name == other.name &&
          priority == other.priority; } 
@override int get hashCode { return Object.hash(Object.hashAll(actions), enabled, Object.hashAll(matchers), name, priority); } 
@override String toString() { return 'EmailUpdateRuleProperties(actions: $actions, enabled: $enabled, matchers: $matchers, name: $name, priority: $priority)'; } 
 }
