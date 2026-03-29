// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_email_rule_action.dart';import 'dlp_email_rule_condition.dart';final class DlpEmailRule {const DlpEmailRule({required this.action, required this.conditions, required this.createdAt, this.description, required this.enabled, required this.name, required this.priority, required this.ruleId, required this.updatedAt, });

factory DlpEmailRule.fromJson(Map<String, dynamic> json) { return DlpEmailRule(
  action: DlpEmailRuleAction.fromJson(json['action'] as Map<String, dynamic>),
  conditions: (json['conditions'] as List<dynamic>).map((e) => DlpEmailRuleCondition.fromJson(e as Map<String, dynamic>)).toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
  description: json['description'] as String?,
  enabled: json['enabled'] as bool,
  name: json['name'] as String,
  priority: (json['priority'] as num).toInt(),
  ruleId: json['rule_id'] as String,
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

final DlpEmailRuleAction action;

/// Triggered if all conditions match.
final List<DlpEmailRuleCondition> conditions;

final DateTime createdAt;

final String? description;

final bool enabled;

final String name;

final int priority;

final String ruleId;

final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'conditions': conditions.map((e) => e.toJson()).toList(),
  'created_at': createdAt.toIso8601String(),
  'description': ?description,
  'enabled': enabled,
  'name': name,
  'priority': priority,
  'rule_id': ruleId,
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('conditions') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('priority') && json['priority'] is num &&
      json.containsKey('rule_id') && json['rule_id'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
DlpEmailRule copyWith({DlpEmailRuleAction? action, List<DlpEmailRuleCondition>? conditions, DateTime? createdAt, String? Function()? description, bool? enabled, String? name, int? priority, String? ruleId, DateTime? updatedAt, }) { return DlpEmailRule(
  action: action ?? this.action,
  conditions: conditions ?? this.conditions,
  createdAt: createdAt ?? this.createdAt,
  description: description != null ? description() : this.description,
  enabled: enabled ?? this.enabled,
  name: name ?? this.name,
  priority: priority ?? this.priority,
  ruleId: ruleId ?? this.ruleId,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEmailRule &&
          action == other.action &&
          listEquals(conditions, other.conditions) &&
          createdAt == other.createdAt &&
          description == other.description &&
          enabled == other.enabled &&
          name == other.name &&
          priority == other.priority &&
          ruleId == other.ruleId &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(action, Object.hashAll(conditions), createdAt, description, enabled, name, priority, ruleId, updatedAt); } 
@override String toString() { return 'DlpEmailRule(action: $action, conditions: $conditions, createdAt: $createdAt, description: $description, enabled: $enabled, name: $name, priority: $priority, ruleId: $ruleId, updatedAt: $updatedAt)'; } 
 }
