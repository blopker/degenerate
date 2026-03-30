// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_rule_catchall_action.dart';import 'email_rule_catchall_matcher.dart';import 'email_rule_enabled.dart';import 'email_rule_identifier.dart';import 'email_rule_name.dart';import 'email_rule_tag.dart';final class EmailCatchAllRule {const EmailCatchAllRule({this.actions, this.enabled, this.id, this.matchers, this.name, this.tag, });

factory EmailCatchAllRule.fromJson(Map<String, dynamic> json) { return EmailCatchAllRule(
  actions: (json['actions'] as List<dynamic>?)?.map((e) => EmailRuleCatchallAction.fromJson(e as Map<String, dynamic>)).toList(),
  enabled: json['enabled'] != null ? EmailRuleEnabled.fromJson(json['enabled'] as bool) : null,
  id: json['id'] != null ? EmailRuleIdentifier.fromJson(json['id'] as String) : null,
  matchers: (json['matchers'] as List<dynamic>?)?.map((e) => EmailRuleCatchallMatcher.fromJson(e as Map<String, dynamic>)).toList(),
  name: json['name'] != null ? EmailRuleName.fromJson(json['name'] as String) : null,
  tag: json['tag'] != null ? EmailRuleTag.fromJson(json['tag'] as String) : null,
); }

final List<EmailRuleCatchallAction>? actions;

final EmailRuleEnabled? enabled;

final EmailRuleIdentifier? id;

final List<EmailRuleCatchallMatcher>? matchers;

final EmailRuleName? name;

final EmailRuleTag? tag;

Map<String, dynamic> toJson() { return {
  if (actions != null) 'actions': actions?.map((e) => e.toJson()).toList(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (matchers != null) 'matchers': matchers?.map((e) => e.toJson()).toList(),
  if (name != null) 'name': name?.toJson(),
  if (tag != null) 'tag': tag?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'actions', 'enabled', 'id', 'matchers', 'name', 'tag'}.contains(key)); } 
EmailCatchAllRule copyWith({List<EmailRuleCatchallAction> Function()? actions, EmailRuleEnabled Function()? enabled, EmailRuleIdentifier Function()? id, List<EmailRuleCatchallMatcher> Function()? matchers, EmailRuleName Function()? name, EmailRuleTag Function()? tag, }) { return EmailCatchAllRule(
  actions: actions != null ? actions() : this.actions,
  enabled: enabled != null ? enabled() : this.enabled,
  id: id != null ? id() : this.id,
  matchers: matchers != null ? matchers() : this.matchers,
  name: name != null ? name() : this.name,
  tag: tag != null ? tag() : this.tag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailCatchAllRule &&
          listEquals(actions, other.actions) &&
          enabled == other.enabled &&
          id == other.id &&
          listEquals(matchers, other.matchers) &&
          name == other.name &&
          tag == other.tag; } 
@override int get hashCode { return Object.hash(Object.hashAll(actions ?? const []), enabled, id, Object.hashAll(matchers ?? const []), name, tag); } 
@override String toString() { return 'EmailCatchAllRule(actions: $actions, enabled: $enabled, id: $id, matchers: $matchers, name: $name, tag: $tag)'; } 
 }
