// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zaraz_variable_match_rule_settings.dart';final class ZarazVariableMatchRuleAction {const ZarazVariableMatchRuleAction._(this.value);

factory ZarazVariableMatchRuleAction.fromJson(String json) { return switch (json) {
  'variableMatch' => variableMatch,
  _ => ZarazVariableMatchRuleAction._(json),
}; }

static const ZarazVariableMatchRuleAction variableMatch = ZarazVariableMatchRuleAction._('variableMatch');

static const List<ZarazVariableMatchRuleAction> values = [variableMatch];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazVariableMatchRuleAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZarazVariableMatchRuleAction($value)'; } 
 }
final class ZarazVariableMatchRule {const ZarazVariableMatchRule({required this.action, required this.id, required this.settings, });

factory ZarazVariableMatchRule.fromJson(Map<String, dynamic> json) { return ZarazVariableMatchRule(
  action: ZarazVariableMatchRuleAction.fromJson(json['action'] as String),
  id: json['id'] as String,
  settings: ZarazVariableMatchRuleSettings.fromJson(json['settings'] as Map<String, dynamic>),
); }

final ZarazVariableMatchRuleAction action;

final String id;

final ZarazVariableMatchRuleSettings settings;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'id': id,
  'settings': settings.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('settings'); } 
ZarazVariableMatchRule copyWith({ZarazVariableMatchRuleAction? action, String? id, ZarazVariableMatchRuleSettings? settings, }) { return ZarazVariableMatchRule(
  action: action ?? this.action,
  id: id ?? this.id,
  settings: settings ?? this.settings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazVariableMatchRule &&
          action == other.action &&
          id == other.id &&
          settings == other.settings; } 
@override int get hashCode { return Object.hash(action, id, settings); } 
@override String toString() { return 'ZarazVariableMatchRule(action: $action, id: $id, settings: $settings)'; } 
 }
