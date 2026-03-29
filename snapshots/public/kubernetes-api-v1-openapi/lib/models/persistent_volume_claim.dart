// GENERATED CODE - DO NOT MODIFY BY HAND

import 'object_meta.dart';import 'persistent_volume_claim_spec.dart';import 'persistent_volume_claim_status.dart';/// PersistentVolumeClaim is a user's request for and claim to a persistent volume
final class PersistentVolumeClaim {const PersistentVolumeClaim({this.apiVersion, this.kind, this.metadata, this.spec, this.status, });

factory PersistentVolumeClaim.fromJson(Map<String, dynamic> json) { return PersistentVolumeClaim(
  apiVersion: json['apiVersion'] as String?,
  kind: json['kind'] as String?,
  metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  spec: json['spec'] != null ? PersistentVolumeClaimSpec.fromJson(json['spec'] as Map<String, dynamic>) : null,
  status: json['status'] != null ? PersistentVolumeClaimStatus.fromJson(json['status'] as Map<String, dynamic>) : null,
); }

/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
final String? apiVersion;

/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
final String? kind;

/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
final ObjectMeta? metadata;

/// spec defines the desired characteristics of a volume requested by a pod author. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
final PersistentVolumeClaimSpec? spec;

/// status represents the current information/status of a persistent volume claim. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
final PersistentVolumeClaimStatus? status;

Map<String, dynamic> toJson() { return {
  'apiVersion': ?apiVersion,
  'kind': ?kind,
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (spec != null) 'spec': spec?.toJson(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PersistentVolumeClaim copyWith({String Function()? apiVersion, String Function()? kind, ObjectMeta Function()? metadata, PersistentVolumeClaimSpec Function()? spec, PersistentVolumeClaimStatus Function()? status, }) { return PersistentVolumeClaim(
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  kind: kind != null ? kind() : this.kind,
  metadata: metadata != null ? metadata() : this.metadata,
  spec: spec != null ? spec() : this.spec,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersistentVolumeClaim &&
          apiVersion == other.apiVersion &&
          kind == other.kind &&
          metadata == other.metadata &&
          spec == other.spec &&
          status == other.status; } 
@override int get hashCode { return Object.hash(apiVersion, kind, metadata, spec, status); } 
@override String toString() { return 'PersistentVolumeClaim(apiVersion: $apiVersion, kind: $kind, metadata: $metadata, spec: $spec, status: $status)'; } 
 }
