// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks {const OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks._(this.value);

factory OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks.fromJson(String json) { return switch (json) {
  'critical-resource' => criticalResource,
  'internet-exposed' => internetExposed,
  'lateral-movement' => lateralMovement,
  'sensitive-data' => sensitiveData,
  _ => OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks._(json),
}; }

static const OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks criticalResource = OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks._('critical-resource');

static const OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks internetExposed = OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks._('internet-exposed');

static const OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks lateralMovement = OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks._('lateral-movement');

static const OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks sensitiveData = OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks._('sensitive-data');

static const List<OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks> values = [criticalResource, internetExposed, lateralMovement, sensitiveData];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks($value)'; } 
 }
/// The status of the artifact. Can be either deployed or decommissioned.
final class OrgsCreateArtifactDeploymentRecordRequestStatus {const OrgsCreateArtifactDeploymentRecordRequestStatus._(this.value);

factory OrgsCreateArtifactDeploymentRecordRequestStatus.fromJson(String json) { return switch (json) {
  'deployed' => deployed,
  'decommissioned' => decommissioned,
  _ => OrgsCreateArtifactDeploymentRecordRequestStatus._(json),
}; }

static const OrgsCreateArtifactDeploymentRecordRequestStatus deployed = OrgsCreateArtifactDeploymentRecordRequestStatus._('deployed');

static const OrgsCreateArtifactDeploymentRecordRequestStatus decommissioned = OrgsCreateArtifactDeploymentRecordRequestStatus._('decommissioned');

static const List<OrgsCreateArtifactDeploymentRecordRequestStatus> values = [deployed, decommissioned];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCreateArtifactDeploymentRecordRequestStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgsCreateArtifactDeploymentRecordRequestStatus($value)'; } 
 }
final class OrgsCreateArtifactDeploymentRecordRequest {const OrgsCreateArtifactDeploymentRecordRequest({required this.name, required this.digest, this.version, required this.status, required this.logicalEnvironment, this.physicalEnvironment, this.cluster, required this.deploymentName, this.tags, this.runtimeRisks, this.githubRepository, });

factory OrgsCreateArtifactDeploymentRecordRequest.fromJson(Map<String, dynamic> json) { return OrgsCreateArtifactDeploymentRecordRequest(
  name: json['name'] as String,
  digest: json['digest'] as String,
  version: json['version'] as String?,
  status: OrgsCreateArtifactDeploymentRecordRequestStatus.fromJson(json['status'] as String),
  logicalEnvironment: json['logical_environment'] as String,
  physicalEnvironment: json['physical_environment'] as String?,
  cluster: json['cluster'] as String?,
  deploymentName: json['deployment_name'] as String,
  tags: (json['tags'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  runtimeRisks: (json['runtime_risks'] as List<dynamic>?)?.map((e) => OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks.fromJson(e as String)).toList(),
  githubRepository: json['github_repository'] as String?,
); }

/// The name of the artifact.
final String name;

/// The hex encoded digest of the artifact.
final String digest;

/// The artifact version.
final String? version;

/// The status of the artifact. Can be either deployed or decommissioned.
final OrgsCreateArtifactDeploymentRecordRequestStatus status;

/// The stage of the deployment.
final String logicalEnvironment;

/// The physical region of the deployment.
final String? physicalEnvironment;

/// The deployment cluster.
final String? cluster;

/// The unique identifier for the deployment represented by the new record. To accommodate differing
/// containers and namespaces within a cluster, the following format is recommended:
/// {namespaceName}-{deploymentName}-{containerName}.
/// 
final String deploymentName;

/// The tags associated with the deployment.
final Map<String,String>? tags;

/// A list of runtime risks associated with the deployment.
final List<OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks>? runtimeRisks;

/// The name of the GitHub repository associated with the artifact. This should be used
/// when there are no provenance attestations available for the artifact. The repository
/// must belong to the organization specified in the path parameter.
/// 
/// If a provenance attestation is available for the artifact, the API will use
/// the repository information from the attestation instead of this parameter.
final String? githubRepository;

Map<String, dynamic> toJson() { return {
  'name': name,
  'digest': digest,
  'version': ?version,
  'status': status.toJson(),
  'logical_environment': logicalEnvironment,
  'physical_environment': ?physicalEnvironment,
  'cluster': ?cluster,
  'deployment_name': deploymentName,
  'tags': ?tags,
  if (runtimeRisks != null) 'runtime_risks': runtimeRisks?.map((e) => e.toJson()).toList(),
  'github_repository': ?githubRepository,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('digest') && json['digest'] is String &&
      json.containsKey('status') &&
      json.containsKey('logical_environment') && json['logical_environment'] is String &&
      json.containsKey('deployment_name') && json['deployment_name'] is String; } 
OrgsCreateArtifactDeploymentRecordRequest copyWith({String? name, String? digest, String Function()? version, OrgsCreateArtifactDeploymentRecordRequestStatus? status, String? logicalEnvironment, String Function()? physicalEnvironment, String Function()? cluster, String? deploymentName, Map<String, String> Function()? tags, List<OrgsCreateArtifactDeploymentRecordRequestRuntimeRisks> Function()? runtimeRisks, String Function()? githubRepository, }) { return OrgsCreateArtifactDeploymentRecordRequest(
  name: name ?? this.name,
  digest: digest ?? this.digest,
  version: version != null ? version() : this.version,
  status: status ?? this.status,
  logicalEnvironment: logicalEnvironment ?? this.logicalEnvironment,
  physicalEnvironment: physicalEnvironment != null ? physicalEnvironment() : this.physicalEnvironment,
  cluster: cluster != null ? cluster() : this.cluster,
  deploymentName: deploymentName ?? this.deploymentName,
  tags: tags != null ? tags() : this.tags,
  runtimeRisks: runtimeRisks != null ? runtimeRisks() : this.runtimeRisks,
  githubRepository: githubRepository != null ? githubRepository() : this.githubRepository,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsCreateArtifactDeploymentRecordRequest &&
          name == other.name &&
          digest == other.digest &&
          version == other.version &&
          status == other.status &&
          logicalEnvironment == other.logicalEnvironment &&
          physicalEnvironment == other.physicalEnvironment &&
          cluster == other.cluster &&
          deploymentName == other.deploymentName &&
          tags == other.tags &&
          listEquals(runtimeRisks, other.runtimeRisks) &&
          githubRepository == other.githubRepository; } 
@override int get hashCode { return Object.hash(name, digest, version, status, logicalEnvironment, physicalEnvironment, cluster, deploymentName, tags, Object.hashAll(runtimeRisks ?? const []), githubRepository); } 
@override String toString() { return 'OrgsCreateArtifactDeploymentRecordRequest(name: $name, digest: $digest, version: $version, status: $status, logicalEnvironment: $logicalEnvironment, physicalEnvironment: $physicalEnvironment, cluster: $cluster, deploymentName: $deploymentName, tags: $tags, runtimeRisks: $runtimeRisks, githubRepository: $githubRepository)'; } 
 }
