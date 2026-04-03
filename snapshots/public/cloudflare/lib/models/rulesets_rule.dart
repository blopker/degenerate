// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_rule_action.dart';import 'rulesets_rule_category.dart';import 'rulesets_rule_enabled.dart';import 'rulesets_rule_exposed_credential_check.dart';import 'rulesets_rule_id.dart';import 'rulesets_rule_logging.dart';import 'rulesets_rule_ratelimit.dart';@immutable final class RulesetsRule {const RulesetsRule({required this.lastUpdated, required this.version, this.action, this.actionParameters = const {}, this.categories, this.description = '', this.enabled, this.exposedCredentialCheck, this.expression, this.id, this.logging, this.ratelimit, this.ref, });

factory RulesetsRule.fromJson(Map<String, dynamic> json) { return RulesetsRule(
  action: json['action'] != null ? RulesetsRuleAction.fromJson(json['action'] as String) : null,
  actionParameters: json.containsKey('action_parameters') ? json['action_parameters'] as Map<String, dynamic> : const {},
  categories: (json['categories'] as List<dynamic>?)?.map((e) => RulesetsRuleCategory.fromJson(e as String)).toList(),
  description: json.containsKey('description') ? json['description'] as String : '',
  enabled: json['enabled'] != null ? RulesetsRuleEnabled.fromJson(json['enabled'] as bool) : null,
  exposedCredentialCheck: json['exposed_credential_check'] != null ? RulesetsRuleExposedCredentialCheck.fromJson(json['exposed_credential_check'] as Map<String, dynamic>) : null,
  expression: json['expression'] as String?,
  id: json['id'] != null ? RulesetsRuleId.fromJson(json['id'] as String) : null,
  lastUpdated: DateTime.parse(json['last_updated'] as String),
  logging: json['logging'] != null ? RulesetsRuleLogging.fromJson(json['logging'] as Map<String, dynamic>) : null,
  ratelimit: json['ratelimit'] != null ? RulesetsRuleRatelimit.fromJson(json['ratelimit'] as Map<String, dynamic>) : null,
  ref: json['ref'] as String?,
  version: json['version'] as String,
); }

final RulesetsRuleAction? action;

/// The parameters configuring the rule's action.
final Map<String,dynamic> actionParameters;

final List<RulesetsRuleCategory>? categories;

/// An informative description of the rule.
final String description;

final RulesetsRuleEnabled? enabled;

final RulesetsRuleExposedCredentialCheck? exposedCredentialCheck;

/// The expression defining which traffic will match the rule.
final String? expression;

final RulesetsRuleId? id;

/// The timestamp of when the rule was last modified.
final DateTime lastUpdated;

final RulesetsRuleLogging? logging;

final RulesetsRuleRatelimit? ratelimit;

/// The reference of the rule (the rule's ID by default).
final String? ref;

/// The version of the rule.
final String version;

Map<String, dynamic> toJson() { return {
  if (action != null) 'action': action?.toJson(),
  'action_parameters': actionParameters,
  if (categories != null) 'categories': categories?.map((e) => e.toJson()).toList(),
  'description': description,
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (exposedCredentialCheck != null) 'exposed_credential_check': exposedCredentialCheck?.toJson(),
  'expression': ?expression,
  if (id != null) 'id': id?.toJson(),
  'last_updated': lastUpdated.toIso8601String(),
  if (logging != null) 'logging': logging?.toJson(),
  if (ratelimit != null) 'ratelimit': ratelimit?.toJson(),
  'ref': ?ref,
  'version': version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('last_updated') && json['last_updated'] is String &&
      json.containsKey('version') && json['version'] is String; } 
RulesetsRule copyWith({RulesetsRuleAction Function()? action, Map<String, dynamic> Function()? actionParameters, List<RulesetsRuleCategory> Function()? categories, String Function()? description, RulesetsRuleEnabled Function()? enabled, RulesetsRuleExposedCredentialCheck Function()? exposedCredentialCheck, String Function()? expression, RulesetsRuleId Function()? id, DateTime? lastUpdated, RulesetsRuleLogging Function()? logging, RulesetsRuleRatelimit Function()? ratelimit, String Function()? ref, String? version, }) { return RulesetsRule(
  action: action != null ? action() : this.action,
  actionParameters: actionParameters != null ? actionParameters() : this.actionParameters,
  categories: categories != null ? categories() : this.categories,
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  exposedCredentialCheck: exposedCredentialCheck != null ? exposedCredentialCheck() : this.exposedCredentialCheck,
  expression: expression != null ? expression() : this.expression,
  id: id != null ? id() : this.id,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  logging: logging != null ? logging() : this.logging,
  ratelimit: ratelimit != null ? ratelimit() : this.ratelimit,
  ref: ref != null ? ref() : this.ref,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsRule &&
          action == other.action &&
          actionParameters == other.actionParameters &&
          listEquals(categories, other.categories) &&
          description == other.description &&
          enabled == other.enabled &&
          exposedCredentialCheck == other.exposedCredentialCheck &&
          expression == other.expression &&
          id == other.id &&
          lastUpdated == other.lastUpdated &&
          logging == other.logging &&
          ratelimit == other.ratelimit &&
          ref == other.ref &&
          version == other.version; } 
@override int get hashCode { return Object.hash(action, actionParameters, Object.hashAll(categories ?? const []), description, enabled, exposedCredentialCheck, expression, id, lastUpdated, logging, ratelimit, ref, version); } 
@override String toString() { return 'RulesetsRule(action: $action, actionParameters: $actionParameters, categories: $categories, description: $description, enabled: $enabled, exposedCredentialCheck: $exposedCredentialCheck, expression: $expression, id: $id, lastUpdated: $lastUpdated, logging: $logging, ratelimit: $ratelimit, ref: $ref, version: $version)'; } 
 }
