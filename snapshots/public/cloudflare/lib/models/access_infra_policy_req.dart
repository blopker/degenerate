// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_connection_rules_infra.dart';import 'access_decision.dart';import 'access_policy_components_schemas_name.dart';import 'access_rule.dart';@immutable final class AccessInfraPolicyReq {const AccessInfraPolicyReq({required this.decision, required this.include, required this.name, this.exclude, this.require, this.connectionRules, });

factory AccessInfraPolicyReq.fromJson(Map<String, dynamic> json) { return AccessInfraPolicyReq(
  decision: AccessDecision.fromJson(json['decision'] as String),
  exclude: (json['exclude'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  include: (json['include'] as List<dynamic>).map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  name: AccessPolicyComponentsSchemasName.fromJson(json['name'] as String),
  require: (json['require'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  connectionRules: json['connection_rules'] != null ? AccessConnectionRulesInfra.fromJson(json['connection_rules'] as Map<String, dynamic>) : null,
); }

/// The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
final AccessDecision decision;

final List<AccessRule>? exclude;

final List<AccessRule> include;

final AccessPolicyComponentsSchemasName name;

final List<AccessRule>? require;

final AccessConnectionRulesInfra? connectionRules;

Map<String, dynamic> toJson() { return {
  'decision': decision.toJson(),
  if (exclude != null) 'exclude': exclude?.map((e) => e.toJson()).toList(),
  'include': include.map((e) => e.toJson()).toList(),
  'name': name.toJson(),
  if (require != null) 'require': require?.map((e) => e.toJson()).toList(),
  if (connectionRules != null) 'connection_rules': connectionRules?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('decision') &&
      json.containsKey('include') &&
      json.containsKey('name'); } 
AccessInfraPolicyReq copyWith({AccessDecision? decision, List<AccessRule> Function()? exclude, List<AccessRule>? include, AccessPolicyComponentsSchemasName? name, List<AccessRule> Function()? require, AccessConnectionRulesInfra Function()? connectionRules, }) { return AccessInfraPolicyReq(
  decision: decision ?? this.decision,
  exclude: exclude != null ? exclude() : this.exclude,
  include: include ?? this.include,
  name: name ?? this.name,
  require: require != null ? require() : this.require,
  connectionRules: connectionRules != null ? connectionRules() : this.connectionRules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessInfraPolicyReq &&
          decision == other.decision &&
          listEquals(exclude, other.exclude) &&
          listEquals(include, other.include) &&
          name == other.name &&
          listEquals(require, other.require) &&
          connectionRules == other.connectionRules; } 
@override int get hashCode { return Object.hash(decision, Object.hashAll(exclude ?? const []), Object.hashAll(include), name, Object.hashAll(require ?? const []), connectionRules); } 
@override String toString() { return 'AccessInfraPolicyReq(decision: $decision, exclude: $exclude, include: $include, name: $name, require: $require, connectionRules: $connectionRules)'; } 
 }
