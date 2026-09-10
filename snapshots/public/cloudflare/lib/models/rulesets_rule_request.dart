// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_rule_action.dart';import 'rulesets_rule_enabled.dart';import 'rulesets_rule_exposed_credential_check.dart';import 'rulesets_rule_id.dart';import 'rulesets_rule_logging.dart';import 'rulesets_rule_ratelimit.dart';@immutable final class RulesetsRuleRequest {const RulesetsRuleRequest({this.action, this.actionParameters, this.description, this.enabled, this.exposedCredentialCheck, this.expression, this.id, this.logging, this.ratelimit, this.ref, });

factory RulesetsRuleRequest.fromJson(Map<String, dynamic> json) { return RulesetsRuleRequest(
  action: json['action'] != null ? RulesetsRuleAction.fromJson(json['action'] as String) : null,
  actionParameters: json['action_parameters'] as Map<String, dynamic>?,
  description: json['description'] as String?,
  enabled: json['enabled'] != null ? RulesetsRuleEnabled.fromJson(json['enabled'] as bool) : null,
  exposedCredentialCheck: json['exposed_credential_check'] != null ? RulesetsRuleExposedCredentialCheck.fromJson(json['exposed_credential_check'] as Map<String, dynamic>) : null,
  expression: json['expression'] as String?,
  id: json['id'] != null ? RulesetsRuleId.fromJson(json['id'] as String) : null,
  logging: json['logging'] != null ? RulesetsRuleLogging.fromJson(json['logging'] as Map<String, dynamic>) : null,
  ratelimit: json['ratelimit'] != null ? RulesetsRuleRatelimit.fromJson(json['ratelimit'] as Map<String, dynamic>) : null,
  ref: json['ref'] as String?,
); }

/// The action to perform when the rule matches.
final RulesetsRuleAction? action;

/// The parameters configuring the rule's action.
final Map<String,dynamic>? actionParameters;

/// An informative description of the rule.
final String? description;

/// Whether the rule should be executed.
final RulesetsRuleEnabled? enabled;

final RulesetsRuleExposedCredentialCheck? exposedCredentialCheck;

/// The expression defining which traffic will match the rule.
final String? expression;

/// The unique ID of the rule.
final RulesetsRuleId? id;

final RulesetsRuleLogging? logging;

final RulesetsRuleRatelimit? ratelimit;

/// The reference of the rule (the rule's ID by default).
final String? ref;

/// The value with the schema default applied when absent.
Map<String,dynamic> get actionParametersOrDefault { return actionParameters ?? const {}; } 
/// The value with the schema default applied when absent.
String get descriptionOrDefault { return description ?? ''; } 
Map<String, dynamic> toJson() { return {
  if (action != null) 'action': action?.toJson(),
  'action_parameters': ?actionParameters,
  'description': ?description,
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (exposedCredentialCheck != null) 'exposed_credential_check': exposedCredentialCheck?.toJson(),
  'expression': ?expression,
  if (id != null) 'id': id?.toJson(),
  if (logging != null) 'logging': logging?.toJson(),
  if (ratelimit != null) 'ratelimit': ratelimit?.toJson(),
  'ref': ?ref,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'action', 'action_parameters', 'description', 'enabled', 'exposed_credential_check', 'expression', 'id', 'logging', 'ratelimit', 'ref'}.contains(key)); } 
RulesetsRuleRequest copyWith({RulesetsRuleAction? Function()? action, Map<String, dynamic>? Function()? actionParameters, String? Function()? description, RulesetsRuleEnabled? Function()? enabled, RulesetsRuleExposedCredentialCheck? Function()? exposedCredentialCheck, String? Function()? expression, RulesetsRuleId? Function()? id, RulesetsRuleLogging? Function()? logging, RulesetsRuleRatelimit? Function()? ratelimit, String? Function()? ref, }) { return RulesetsRuleRequest(
  action: action != null ? action() : this.action,
  actionParameters: actionParameters != null ? actionParameters() : this.actionParameters,
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  exposedCredentialCheck: exposedCredentialCheck != null ? exposedCredentialCheck() : this.exposedCredentialCheck,
  expression: expression != null ? expression() : this.expression,
  id: id != null ? id() : this.id,
  logging: logging != null ? logging() : this.logging,
  ratelimit: ratelimit != null ? ratelimit() : this.ratelimit,
  ref: ref != null ? ref() : this.ref,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsRuleRequest &&
          action == other.action &&
          actionParameters == other.actionParameters &&
          description == other.description &&
          enabled == other.enabled &&
          exposedCredentialCheck == other.exposedCredentialCheck &&
          expression == other.expression &&
          id == other.id &&
          logging == other.logging &&
          ratelimit == other.ratelimit &&
          ref == other.ref; } 
@override int get hashCode { return Object.hash(action, actionParameters, description, enabled, exposedCredentialCheck, expression, id, logging, ratelimit, ref); } 
@override String toString() { return 'RulesetsRuleRequest(action: $action, actionParameters: $actionParameters, description: $description, enabled: $enabled, exposedCredentialCheck: $exposedCredentialCheck, expression: $expression, id: $id, logging: $logging, ratelimit: $ratelimit, ref: $ref)'; } 
 }
