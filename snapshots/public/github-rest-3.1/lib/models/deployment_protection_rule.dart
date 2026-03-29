// GENERATED CODE - DO NOT MODIFY BY HAND

import 'custom_deployment_rule_app.dart';/// Deployment protection rule
final class DeploymentProtectionRule {const DeploymentProtectionRule({required this.id, required this.nodeId, required this.enabled, required this.app, });

factory DeploymentProtectionRule.fromJson(Map<String, dynamic> json) { return DeploymentProtectionRule(
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  enabled: json['enabled'] as bool,
  app: CustomDeploymentRuleApp.fromJson(json['app'] as Map<String, dynamic>),
); }

/// The unique identifier for the deployment protection rule.
final int id;

/// The node ID for the deployment protection rule.
final String nodeId;

/// Whether the deployment protection rule is enabled for the environment.
final bool enabled;

final CustomDeploymentRuleApp app;

Map<String, dynamic> toJson() { return {
  'id': id,
  'node_id': nodeId,
  'enabled': enabled,
  'app': app.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('app'); } 
DeploymentProtectionRule copyWith({int? id, String? nodeId, bool? enabled, CustomDeploymentRuleApp? app, }) { return DeploymentProtectionRule(
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  enabled: enabled ?? this.enabled,
  app: app ?? this.app,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeploymentProtectionRule &&
          id == other.id &&
          nodeId == other.nodeId &&
          enabled == other.enabled &&
          app == other.app; } 
@override int get hashCode { return Object.hash(id, nodeId, enabled, app); } 
@override String toString() { return 'DeploymentProtectionRule(id: $id, nodeId: $nodeId, enabled: $enabled, app: $app)'; } 
 }
