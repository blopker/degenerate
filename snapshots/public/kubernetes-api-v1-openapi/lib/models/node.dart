// GENERATED CODE - DO NOT MODIFY BY HAND

import 'node_spec.dart';import 'node_status.dart';import 'object_meta.dart';/// Node is a worker node in Kubernetes. Each node will have a unique identifier in the cache (i.e. in etcd).
final class Node {const Node({this.apiVersion, this.kind, this.metadata, this.spec, this.status, });

factory Node.fromJson(Map<String, dynamic> json) { return Node(
  apiVersion: json['apiVersion'] as String?,
  kind: json['kind'] as String?,
  metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  spec: json['spec'] != null ? NodeSpec.fromJson(json['spec'] as Map<String, dynamic>) : null,
  status: json['status'] != null ? NodeStatus.fromJson(json['status'] as Map<String, dynamic>) : null,
); }

/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
final String? apiVersion;

/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
final String? kind;

/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
final ObjectMeta? metadata;

/// Spec defines the behavior of a node. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
final NodeSpec? spec;

/// Most recently observed status of the node. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
final NodeStatus? status;

Map<String, dynamic> toJson() { return {
  'apiVersion': ?apiVersion,
  'kind': ?kind,
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (spec != null) 'spec': spec?.toJson(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Node copyWith({String Function()? apiVersion, String Function()? kind, ObjectMeta Function()? metadata, NodeSpec Function()? spec, NodeStatus Function()? status, }) { return Node(
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  kind: kind != null ? kind() : this.kind,
  metadata: metadata != null ? metadata() : this.metadata,
  spec: spec != null ? spec() : this.spec,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Node &&
          apiVersion == other.apiVersion &&
          kind == other.kind &&
          metadata == other.metadata &&
          spec == other.spec &&
          status == other.status; } 
@override int get hashCode { return Object.hash(apiVersion, kind, metadata, spec, status); } 
@override String toString() { return 'Node(apiVersion: $apiVersion, kind: $kind, metadata: $metadata, spec: $spec, status: $status)'; } 
 }
