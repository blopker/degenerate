// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleDetailedVariant6Parameters {const RepositoryRuleDetailedVariant6Parameters({required this.requiredDeploymentEnvironments});

factory RepositoryRuleDetailedVariant6Parameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant6Parameters(
  requiredDeploymentEnvironments: (json['required_deployment_environments'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The environments that must be successfully deployed to before branches can be merged.
final List<String> requiredDeploymentEnvironments;

Map<String, dynamic> toJson() { return {
  'required_deployment_environments': requiredDeploymentEnvironments,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('required_deployment_environments'); } 
RepositoryRuleDetailedVariant6Parameters copyWith({List<String>? requiredDeploymentEnvironments}) { return RepositoryRuleDetailedVariant6Parameters(
  requiredDeploymentEnvironments: requiredDeploymentEnvironments ?? this.requiredDeploymentEnvironments,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant6Parameters &&
          listEquals(requiredDeploymentEnvironments, other.requiredDeploymentEnvironments); } 
@override int get hashCode { return Object.hashAll(requiredDeploymentEnvironments).hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant6Parameters(requiredDeploymentEnvironments: $requiredDeploymentEnvironments)'; } 
 }
