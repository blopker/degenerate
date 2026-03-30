// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'artifact_deployment_record.dart';final class OrgsSetClusterDeploymentRecordsResponse {const OrgsSetClusterDeploymentRecordsResponse({this.totalCount, this.deploymentRecords, });

factory OrgsSetClusterDeploymentRecordsResponse.fromJson(Map<String, dynamic> json) { return OrgsSetClusterDeploymentRecordsResponse(
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toInt() : null,
  deploymentRecords: (json['deployment_records'] as List<dynamic>?)?.map((e) => ArtifactDeploymentRecord.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The number of deployment records created
final int? totalCount;

final List<ArtifactDeploymentRecord>? deploymentRecords;

Map<String, dynamic> toJson() { return {
  'total_count': ?totalCount,
  if (deploymentRecords != null) 'deployment_records': deploymentRecords?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total_count', 'deployment_records'}.contains(key)); } 
OrgsSetClusterDeploymentRecordsResponse copyWith({int Function()? totalCount, List<ArtifactDeploymentRecord> Function()? deploymentRecords, }) { return OrgsSetClusterDeploymentRecordsResponse(
  totalCount: totalCount != null ? totalCount() : this.totalCount,
  deploymentRecords: deploymentRecords != null ? deploymentRecords() : this.deploymentRecords,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsSetClusterDeploymentRecordsResponse &&
          totalCount == other.totalCount &&
          listEquals(deploymentRecords, other.deploymentRecords); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(deploymentRecords ?? const [])); } 
@override String toString() { return 'OrgsSetClusterDeploymentRecordsResponse(totalCount: $totalCount, deploymentRecords: $deploymentRecords)'; } 
 }
