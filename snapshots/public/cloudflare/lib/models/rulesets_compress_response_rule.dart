// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_compress_response_rule_action_parameters.dart';import 'rulesets_rule_category.dart';import 'rulesets_rule_enabled.dart';import 'rulesets_rule_exposed_credential_check.dart';import 'rulesets_rule_id.dart';import 'rulesets_rule_logging.dart';import 'rulesets_rule_ratelimit.dart';@immutable final class RulesetsCompressResponseRule {const RulesetsCompressResponseRule({required this.lastUpdated, required this.version, this.action = const Omittable.absent(), this.actionParameters, this.categories, this.description = const Omittable.absent(), this.enabled, this.exposedCredentialCheck, this.expression, this.id, this.logging, this.ratelimit, this.ref, });

factory RulesetsCompressResponseRule.fromJson(Map<String, dynamic> json) { return RulesetsCompressResponseRule(
  action: json.containsKey('action') ? Omittable(json['action']) : const Omittable.absent(),
  actionParameters: json['action_parameters'] != null ? RulesetsCompressResponseRuleActionParameters.fromJson(json['action_parameters'] as Map<String, dynamic>) : null,
  categories: (json['categories'] as List<dynamic>?)?.map((e) => RulesetsRuleCategory.fromJson(e as String)).toList(),
  description: json.containsKey('description') ? Omittable(json['description']) : const Omittable.absent(),
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

final Omittable<dynamic> action;

final RulesetsCompressResponseRuleActionParameters? actionParameters;

final List<RulesetsRuleCategory>? categories;

final Omittable<dynamic> description;

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
  if (action.isPresent) 'action': action.value,
  if (actionParameters != null) 'action_parameters': actionParameters?.toJson(),
  if (categories != null) 'categories': categories?.map((e) => e.toJson()).toList(),
  if (description.isPresent) 'description': description.value,
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
RulesetsCompressResponseRule copyWith({Omittable<dynamic>? action, RulesetsCompressResponseRuleActionParameters? Function()? actionParameters, List<RulesetsRuleCategory>? Function()? categories, Omittable<dynamic>? description, RulesetsRuleEnabled? Function()? enabled, RulesetsRuleExposedCredentialCheck? Function()? exposedCredentialCheck, String? Function()? expression, RulesetsRuleId? Function()? id, DateTime? lastUpdated, RulesetsRuleLogging? Function()? logging, RulesetsRuleRatelimit? Function()? ratelimit, String? Function()? ref, String? version, }) { return RulesetsCompressResponseRule(
  action: action ?? this.action,
  actionParameters: actionParameters != null ? actionParameters() : this.actionParameters,
  categories: categories != null ? categories() : this.categories,
  description: description ?? this.description,
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
      other is RulesetsCompressResponseRule &&
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
@override String toString() { return 'RulesetsCompressResponseRule(action: $action, actionParameters: $actionParameters, categories: $categories, description: $description, enabled: $enabled, exposedCredentialCheck: $exposedCredentialCheck, expression: $expression, id: $id, lastUpdated: $lastUpdated, logging: $logging, ratelimit: $ratelimit, ref: $ref, version: $version)'; } 
 }
