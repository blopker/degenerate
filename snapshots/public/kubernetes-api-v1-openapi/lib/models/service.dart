// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'object_meta.dart';import 'service_spec.dart';import 'service_status.dart';/// Service is a named abstraction of software service (for example, mysql) consisting of local port (for example 3306) that the proxy listens on, and the selector that determines which pods will answer requests sent through the proxy.
@immutable final class Service {const Service({this.apiVersion, this.kind, this.metadata, this.spec, this.status, });

factory Service.fromJson(Map<String, dynamic> json) { return Service(
  apiVersion: json['apiVersion'] as String?,
  kind: json['kind'] as String?,
  metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  spec: json['spec'] != null ? ServiceSpec.fromJson(json['spec'] as Map<String, dynamic>) : null,
  status: json['status'] != null ? ServiceStatus.fromJson(json['status'] as Map<String, dynamic>) : null,
); }

/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
final String? apiVersion;

/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
final String? kind;

/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
final ObjectMeta? metadata;

/// Spec defines the behavior of a service. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
final ServiceSpec? spec;

/// Most recently observed status of the service. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
final ServiceStatus? status;

Map<String, dynamic> toJson() { return {
  'apiVersion': ?apiVersion,
  'kind': ?kind,
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (spec != null) 'spec': spec?.toJson(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'apiVersion', 'kind', 'metadata', 'spec', 'status'}.contains(key)); } 
Service copyWith({String Function()? apiVersion, String Function()? kind, ObjectMeta Function()? metadata, ServiceSpec Function()? spec, ServiceStatus Function()? status, }) { return Service(
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  kind: kind != null ? kind() : this.kind,
  metadata: metadata != null ? metadata() : this.metadata,
  spec: spec != null ? spec() : this.spec,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Service &&
          apiVersion == other.apiVersion &&
          kind == other.kind &&
          metadata == other.metadata &&
          spec == other.spec &&
          status == other.status; } 
@override int get hashCode { return Object.hash(apiVersion, kind, metadata, spec, status); } 
@override String toString() { return 'Service(apiVersion: $apiVersion, kind: $kind, metadata: $metadata, spec: $spec, status: $status)'; } 
 }
