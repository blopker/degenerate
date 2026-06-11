// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_apps_components_schemas_name.dart';import 'access_infra_policy_resp.dart';import 'access_schemas_aud.dart';import 'access_target_criteria_infra_app.dart';import 'access_timestamp.dart';import 'access_type.dart';import 'access_uuid.dart';/// The policies that Access applies to the application.
@immutable final class InfrastructureApplication2 {const InfrastructureApplication2({required this.type, required this.targetCriteria, this.aud, this.createdAt, this.id, this.updatedAt, this.name, this.policies, });

factory InfrastructureApplication2.fromJson(Map<String, dynamic> json) { return InfrastructureApplication2(
  aud: json['aud'] != null ? AccessSchemasAud.fromJson(json['aud'] as String) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  type: AccessType.fromJson(json['type'] as String),
  targetCriteria: (json['target_criteria'] as List<dynamic>).map((e) => AccessTargetCriteriaInfraApp.fromJson(e as Map<String, dynamic>)).toList(),
  policies: (json['policies'] as List<dynamic>?)?.map((e) => AccessInfraPolicyResp.fromJson(e as Map<String, dynamic>)).toList(),
); }

final AccessSchemasAud? aud;

final AccessTimestamp? createdAt;

final AccessUuid? id;

final AccessTimestamp? updatedAt;

final AccessAppsComponentsSchemasName? name;

final AccessType type;

final List<AccessTargetCriteriaInfraApp> targetCriteria;

final List<AccessInfraPolicyResp>? policies;

Map<String, dynamic> toJson() { return {
  if (aud != null) 'aud': aud?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  if (name != null) 'name': name?.toJson(),
  'type': type.toJson(),
  'target_criteria': targetCriteria.map((e) => e.toJson()).toList(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('target_criteria'); } 
InfrastructureApplication2 copyWith({AccessSchemasAud Function()? aud, AccessTimestamp Function()? createdAt, AccessUuid Function()? id, AccessTimestamp Function()? updatedAt, AccessAppsComponentsSchemasName Function()? name, AccessType? type, List<AccessTargetCriteriaInfraApp>? targetCriteria, List<AccessInfraPolicyResp> Function()? policies, }) { return InfrastructureApplication2(
  aud: aud != null ? aud() : this.aud,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  name: name != null ? name() : this.name,
  type: type ?? this.type,
  targetCriteria: targetCriteria ?? this.targetCriteria,
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfrastructureApplication2 &&
          aud == other.aud &&
          createdAt == other.createdAt &&
          id == other.id &&
          updatedAt == other.updatedAt &&
          name == other.name &&
          type == other.type &&
          listEquals(targetCriteria, other.targetCriteria) &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hash(aud, createdAt, id, updatedAt, name, type, Object.hashAll(targetCriteria), Object.hashAll(policies ?? const [])); } 
@override String toString() { return 'InfrastructureApplication2(aud: $aud, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, name: $name, type: $type, targetCriteria: $targetCriteria, policies: $policies)'; } 
 }
