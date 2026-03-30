// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_action.dart';import 'shield_after.dart';import 'shield_before.dart';import 'shield_enabled.dart';import 'shield_expression.dart';import 'shield_index.dart';import 'shield_position.dart';import 'shield_schemas_description.dart';import 'shield_schemas_title.dart';import 'shield_selector.dart';final class ShieldEditSingleRuleRequest {const ShieldEditSingleRuleRequest({this.action, this.description, this.enabled, this.expression, this.selector, this.title, this.position, });

factory ShieldEditSingleRuleRequest.fromJson(Map<String, dynamic> json) { return ShieldEditSingleRuleRequest(
  action: json['action'] != null ? ShieldAction.fromJson(json['action'] as String) : null,
  description: json['description'] != null ? ShieldSchemasDescription.fromJson(json['description'] as String) : null,
  enabled: json['enabled'] != null ? ShieldEnabled.fromJson(json['enabled'] as bool) : null,
  expression: json['expression'] != null ? ShieldExpression.fromJson(json['expression'] as String) : null,
  selector: json['selector'] != null ? ShieldSelector.fromJson(json['selector'] as Map<String, dynamic>) : null,
  title: json['title'] != null ? ShieldSchemasTitle.fromJson(json['title'] as String) : null,
  position: json['position'] != null ? OneOf3.parse(json['position'], fromA: (v) => ShieldIndex.fromJson(v as Map<String, dynamic>), fromB: (v) => ShieldBefore.fromJson(v as Map<String, dynamic>), fromC: (v) => ShieldAfter.fromJson(v as Map<String, dynamic>),) : null,
); }

/// Action to take on requests that match operations included in `selector` and fail `expression`.
final ShieldAction? action;

final ShieldSchemasDescription? description;

final ShieldEnabled? enabled;

final ShieldExpression? expression;

final ShieldSelector? selector;

final ShieldSchemasTitle? title;

final ShieldPosition? position;

Map<String, dynamic> toJson() { return {
  if (action != null) 'action': action?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (expression != null) 'expression': expression?.toJson(),
  if (selector != null) 'selector': selector?.toJson(),
  if (title != null) 'title': title?.toJson(),
  if (position != null) 'position': position?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'action', 'description', 'enabled', 'expression', 'selector', 'title', 'position'}.contains(key)); } 
ShieldEditSingleRuleRequest copyWith({ShieldAction Function()? action, ShieldSchemasDescription Function()? description, ShieldEnabled Function()? enabled, ShieldExpression Function()? expression, ShieldSelector Function()? selector, ShieldSchemasTitle Function()? title, ShieldPosition Function()? position, }) { return ShieldEditSingleRuleRequest(
  action: action != null ? action() : this.action,
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  expression: expression != null ? expression() : this.expression,
  selector: selector != null ? selector() : this.selector,
  title: title != null ? title() : this.title,
  position: position != null ? position() : this.position,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldEditSingleRuleRequest &&
          action == other.action &&
          description == other.description &&
          enabled == other.enabled &&
          expression == other.expression &&
          selector == other.selector &&
          title == other.title &&
          position == other.position; } 
@override int get hashCode { return Object.hash(action, description, enabled, expression, selector, title, position); } 
@override String toString() { return 'ShieldEditSingleRuleRequest(action: $action, description: $description, enabled: $enabled, expression: $expression, selector: $selector, title: $title, position: $position)'; } 
 }
