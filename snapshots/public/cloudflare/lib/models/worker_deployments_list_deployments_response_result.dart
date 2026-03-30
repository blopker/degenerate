// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_deployment.dart';final class WorkerDeploymentsListDeploymentsResponseResult {const WorkerDeploymentsListDeploymentsResponseResult({required this.deployments});

factory WorkerDeploymentsListDeploymentsResponseResult.fromJson(Map<String, dynamic> json) { return WorkerDeploymentsListDeploymentsResponseResult(
  deployments: (json['deployments'] as List<dynamic>).map((e) => WorkersDeployment.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersDeployment> deployments;

Map<String, dynamic> toJson() { return {
  'deployments': deployments.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deployments'); } 
WorkerDeploymentsListDeploymentsResponseResult copyWith({List<WorkersDeployment>? deployments}) { return WorkerDeploymentsListDeploymentsResponseResult(
  deployments: deployments ?? this.deployments,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerDeploymentsListDeploymentsResponseResult &&
          listEquals(deployments, other.deployments); } 
@override int get hashCode { return Object.hashAll(deployments).hashCode; } 
@override String toString() { return 'WorkerDeploymentsListDeploymentsResponseResult(deployments: $deployments)'; } 
 }
