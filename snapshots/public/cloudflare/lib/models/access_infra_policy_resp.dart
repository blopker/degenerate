// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_connection_rules_infra.dart';import 'access_decision.dart';import 'access_policy_components_schemas_name.dart';import 'access_rule.dart';import 'access_schemas_uuid.dart';import 'access_timestamp.dart';@immutable final class AccessInfraPolicyResp {const AccessInfraPolicyResp({this.createdAt, this.decision, this.exclude, this.id, this.include, this.name, this.require, this.updatedAt, this.connectionRules, });

factory AccessInfraPolicyResp.fromJson(Map<String, dynamic> json) { return AccessInfraPolicyResp(
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  decision: json['decision'] != null ? AccessDecision.fromJson(json['decision'] as String) : null,
  exclude: (json['exclude'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  id: json['id'] != null ? AccessSchemasUuid.fromJson(json['id'] as String) : null,
  include: (json['include'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  name: json['name'] != null ? AccessPolicyComponentsSchemasName.fromJson(json['name'] as String) : null,
  require: (json['require'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
  connectionRules: json['connection_rules'] != null ? AccessConnectionRulesInfra.fromJson(json['connection_rules'] as Map<String, dynamic>) : null,
); }

final AccessTimestamp? createdAt;

/// The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
final AccessDecision? decision;

final List<AccessRule>? exclude;

final AccessSchemasUuid? id;

final List<AccessRule>? include;

final AccessPolicyComponentsSchemasName? name;

final List<AccessRule>? require;

final AccessTimestamp? updatedAt;

final AccessConnectionRulesInfra? connectionRules;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (decision != null) 'decision': decision?.toJson(),
  if (exclude != null) 'exclude': exclude?.map((e) => e.toJson()).toList(),
  if (id != null) 'id': id?.toJson(),
  if (include != null) 'include': include?.map((e) => e.toJson()).toList(),
  if (name != null) 'name': name?.toJson(),
  if (require != null) 'require': require?.map((e) => e.toJson()).toList(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  if (connectionRules != null) 'connection_rules': connectionRules?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'decision', 'exclude', 'id', 'include', 'name', 'require', 'updated_at', 'connection_rules'}.contains(key)); } 
AccessInfraPolicyResp copyWith({AccessTimestamp Function()? createdAt, AccessDecision Function()? decision, List<AccessRule> Function()? exclude, AccessSchemasUuid Function()? id, List<AccessRule> Function()? include, AccessPolicyComponentsSchemasName Function()? name, List<AccessRule> Function()? require, AccessTimestamp Function()? updatedAt, AccessConnectionRulesInfra Function()? connectionRules, }) { return AccessInfraPolicyResp(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  decision: decision != null ? decision() : this.decision,
  exclude: exclude != null ? exclude() : this.exclude,
  id: id != null ? id() : this.id,
  include: include != null ? include() : this.include,
  name: name != null ? name() : this.name,
  require: require != null ? require() : this.require,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  connectionRules: connectionRules != null ? connectionRules() : this.connectionRules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessInfraPolicyResp &&
          createdAt == other.createdAt &&
          decision == other.decision &&
          listEquals(exclude, other.exclude) &&
          id == other.id &&
          listEquals(include, other.include) &&
          name == other.name &&
          listEquals(require, other.require) &&
          updatedAt == other.updatedAt &&
          connectionRules == other.connectionRules; } 
@override int get hashCode { return Object.hash(createdAt, decision, Object.hashAll(exclude ?? const []), id, Object.hashAll(include ?? const []), name, Object.hashAll(require ?? const []), updatedAt, connectionRules); } 
@override String toString() { return 'AccessInfraPolicyResp(createdAt: $createdAt, decision: $decision, exclude: $exclude, id: $id, include: $include, name: $name, require: $require, updatedAt: $updatedAt, connectionRules: $connectionRules)'; } 
 }
