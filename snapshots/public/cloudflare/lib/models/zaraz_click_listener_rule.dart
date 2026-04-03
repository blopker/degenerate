// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_click_listener_rule_settings.dart';@immutable final class ZarazClickListenerRuleAction {const ZarazClickListenerRuleAction._(this.value);

factory ZarazClickListenerRuleAction.fromJson(String json) { return switch (json) {
  'clickListener' => clickListener,
  _ => ZarazClickListenerRuleAction._(json),
}; }

static const ZarazClickListenerRuleAction clickListener = ZarazClickListenerRuleAction._('clickListener');

static const List<ZarazClickListenerRuleAction> values = [clickListener];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazClickListenerRuleAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZarazClickListenerRuleAction($value)'; } 
 }
@immutable final class ZarazClickListenerRule {const ZarazClickListenerRule({required this.action, required this.id, required this.settings, });

factory ZarazClickListenerRule.fromJson(Map<String, dynamic> json) { return ZarazClickListenerRule(
  action: ZarazClickListenerRuleAction.fromJson(json['action'] as String),
  id: json['id'] as String,
  settings: ZarazClickListenerRuleSettings.fromJson(json['settings'] as Map<String, dynamic>),
); }

final ZarazClickListenerRuleAction action;

final String id;

final ZarazClickListenerRuleSettings settings;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'id': id,
  'settings': settings.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('settings'); } 
ZarazClickListenerRule copyWith({ZarazClickListenerRuleAction? action, String? id, ZarazClickListenerRuleSettings? settings, }) { return ZarazClickListenerRule(
  action: action ?? this.action,
  id: id ?? this.id,
  settings: settings ?? this.settings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazClickListenerRule &&
          action == other.action &&
          id == other.id &&
          settings == other.settings; } 
@override int get hashCode { return Object.hash(action, id, settings); } 
@override String toString() { return 'ZarazClickListenerRule(action: $action, id: $id, settings: $settings)'; } 
 }
