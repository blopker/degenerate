// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_apps_components_schemas_name.dart';import 'access_infra_policy_req.dart';import 'access_target_criteria_infra_app.dart';import 'access_type.dart';/// Contains the targets secured by the application.
@immutable final class InfrastructureApplication {const InfrastructureApplication({required this.type, required this.targetCriteria, this.name, this.policies, });

factory InfrastructureApplication.fromJson(Map<String, dynamic> json) { return InfrastructureApplication(
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  type: AccessType.fromJson(json['type'] as String),
  targetCriteria: (json['target_criteria'] as List<dynamic>).map((e) => AccessTargetCriteriaInfraApp.fromJson(e as Map<String, dynamic>)).toList(),
  policies: (json['policies'] as List<dynamic>?)?.map((e) => AccessInfraPolicyReq.fromJson(e as Map<String, dynamic>)).toList(),
); }

final AccessAppsComponentsSchemasName? name;

final AccessType type;

final List<AccessTargetCriteriaInfraApp> targetCriteria;

/// The policies that Access applies to the application.
final List<AccessInfraPolicyReq>? policies;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
  'type': type.toJson(),
  'target_criteria': targetCriteria.map((e) => e.toJson()).toList(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('target_criteria'); } 
InfrastructureApplication copyWith({AccessAppsComponentsSchemasName Function()? name, AccessType? type, List<AccessTargetCriteriaInfraApp>? targetCriteria, List<AccessInfraPolicyReq> Function()? policies, }) { return InfrastructureApplication(
  name: name != null ? name() : this.name,
  type: type ?? this.type,
  targetCriteria: targetCriteria ?? this.targetCriteria,
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfrastructureApplication &&
          name == other.name &&
          type == other.type &&
          listEquals(targetCriteria, other.targetCriteria) &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hash(name, type, Object.hashAll(targetCriteria), Object.hashAll(policies ?? const [])); } 
@override String toString() { return 'InfrastructureApplication(name: $name, type: $type, targetCriteria: $targetCriteria, policies: $policies)'; } 
 }
