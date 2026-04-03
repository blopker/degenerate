// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'endpoint_subset.dart';import 'object_meta.dart';/// Endpoints is a collection of endpoints that implement the actual service. Example:
/// 
/// 	 Name: "mysvc",
/// 	 Subsets: [
/// 	   {
/// 	     Addresses: `[{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}]`,
/// 	     Ports: `[{"name": "a", "port": 8675}, {"name": "b", "port": 309}]`
/// 	   },
/// 	   {
/// 	     Addresses: `[{"ip": "10.10.3.3"}]`,
/// 	     Ports: `[{"name": "a", "port": 93}, {"name": "b", "port": 76}]`
/// 	   },
/// 	]
/// 
/// Endpoints is a legacy API and does not contain information about all Service features. Use discoveryv1.EndpointSlice for complete information about Service endpoints.
/// 
/// Deprecated: This API is deprecated in v1.33+. Use discoveryv1.EndpointSlice.
@immutable final class Endpoints {const Endpoints({this.apiVersion, this.kind, this.metadata, this.subsets, });

factory Endpoints.fromJson(Map<String, dynamic> json) { return Endpoints(
  apiVersion: json['apiVersion'] as String?,
  kind: json['kind'] as String?,
  metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  subsets: (json['subsets'] as List<dynamic>?)?.map((e) => EndpointSubset.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
final String? apiVersion;

/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
final String? kind;

/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
final ObjectMeta? metadata;

/// The set of all endpoints is the union of all subsets. Addresses are placed into subsets according to the IPs they share. A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports. No address will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses and ports that comprise a service.
final List<EndpointSubset>? subsets;

Map<String, dynamic> toJson() { return {
  'apiVersion': ?apiVersion,
  'kind': ?kind,
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (subsets != null) 'subsets': subsets?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'apiVersion', 'kind', 'metadata', 'subsets'}.contains(key)); } 
Endpoints copyWith({String Function()? apiVersion, String Function()? kind, ObjectMeta Function()? metadata, List<EndpointSubset> Function()? subsets, }) { return Endpoints(
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  kind: kind != null ? kind() : this.kind,
  metadata: metadata != null ? metadata() : this.metadata,
  subsets: subsets != null ? subsets() : this.subsets,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Endpoints &&
          apiVersion == other.apiVersion &&
          kind == other.kind &&
          metadata == other.metadata &&
          listEquals(subsets, other.subsets); } 
@override int get hashCode { return Object.hash(apiVersion, kind, metadata, Object.hashAll(subsets ?? const [])); } 
@override String toString() { return 'Endpoints(apiVersion: $apiVersion, kind: $kind, metadata: $metadata, subsets: $subsets)'; } 
 }
