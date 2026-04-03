// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'object_meta.dart';import 'pod_spec.dart';import 'pod_status.dart';/// Pod is a collection of containers that can run on a host. This resource is created by clients and scheduled onto hosts.
@immutable final class Pod {const Pod({this.apiVersion, this.kind, this.metadata, this.spec, this.status, });

factory Pod.fromJson(Map<String, dynamic> json) { return Pod(
  apiVersion: json['apiVersion'] as String?,
  kind: json['kind'] as String?,
  metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  spec: json['spec'] != null ? PodSpec.fromJson(json['spec'] as Map<String, dynamic>) : null,
  status: json['status'] != null ? PodStatus.fromJson(json['status'] as Map<String, dynamic>) : null,
); }

/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
final String? apiVersion;

/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
final String? kind;

/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
final ObjectMeta? metadata;

/// Specification of the desired behavior of the pod. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
final PodSpec? spec;

/// Most recently observed status of the pod. This data may not be up to date. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
final PodStatus? status;

Map<String, dynamic> toJson() { return {
  'apiVersion': ?apiVersion,
  'kind': ?kind,
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (spec != null) 'spec': spec?.toJson(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'apiVersion', 'kind', 'metadata', 'spec', 'status'}.contains(key)); } 
Pod copyWith({String Function()? apiVersion, String Function()? kind, ObjectMeta Function()? metadata, PodSpec Function()? spec, PodStatus Function()? status, }) { return Pod(
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  kind: kind != null ? kind() : this.kind,
  metadata: metadata != null ? metadata() : this.metadata,
  spec: spec != null ? spec() : this.spec,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Pod &&
          apiVersion == other.apiVersion &&
          kind == other.kind &&
          metadata == other.metadata &&
          spec == other.spec &&
          status == other.status; } 
@override int get hashCode { return Object.hash(apiVersion, kind, metadata, spec, status); } 
@override String toString() { return 'Pod(apiVersion: $apiVersion, kind: $kind, metadata: $metadata, spec: $spec, status: $status)'; } 
 }
