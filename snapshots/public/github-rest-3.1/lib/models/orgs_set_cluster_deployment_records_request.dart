// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'orgs_set_cluster_deployment_records_request_deployments.dart';final class OrgsSetClusterDeploymentRecordsRequest {const OrgsSetClusterDeploymentRecordsRequest({required this.logicalEnvironment, this.physicalEnvironment, required this.deployments, });

factory OrgsSetClusterDeploymentRecordsRequest.fromJson(Map<String, dynamic> json) { return OrgsSetClusterDeploymentRecordsRequest(
  logicalEnvironment: json['logical_environment'] as String,
  physicalEnvironment: json['physical_environment'] as String?,
  deployments: (json['deployments'] as List<dynamic>).map((e) => OrgsSetClusterDeploymentRecordsRequestDeployments.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The stage of the deployment.
final String logicalEnvironment;

/// The physical region of the deployment.
final String? physicalEnvironment;

/// The list of deployments to record.
final List<OrgsSetClusterDeploymentRecordsRequestDeployments> deployments;

Map<String, dynamic> toJson() { return {
  'logical_environment': logicalEnvironment,
  'physical_environment': ?physicalEnvironment,
  'deployments': deployments.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('logical_environment') && json['logical_environment'] is String &&
      json.containsKey('deployments'); } 
OrgsSetClusterDeploymentRecordsRequest copyWith({String? logicalEnvironment, String Function()? physicalEnvironment, List<OrgsSetClusterDeploymentRecordsRequestDeployments>? deployments, }) { return OrgsSetClusterDeploymentRecordsRequest(
  logicalEnvironment: logicalEnvironment ?? this.logicalEnvironment,
  physicalEnvironment: physicalEnvironment != null ? physicalEnvironment() : this.physicalEnvironment,
  deployments: deployments ?? this.deployments,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsSetClusterDeploymentRecordsRequest &&
          logicalEnvironment == other.logicalEnvironment &&
          physicalEnvironment == other.physicalEnvironment &&
          listEquals(deployments, other.deployments); } 
@override int get hashCode { return Object.hash(logicalEnvironment, physicalEnvironment, Object.hashAll(deployments)); } 
@override String toString() { return 'OrgsSetClusterDeploymentRecordsRequest(logicalEnvironment: $logicalEnvironment, physicalEnvironment: $physicalEnvironment, deployments: $deployments)'; } 
 }
