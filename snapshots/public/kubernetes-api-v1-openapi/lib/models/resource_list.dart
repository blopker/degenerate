// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource.dart';/// APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.
final class ResourceList {const ResourceList({this.apiVersion, this.groupVersion = '', this.kind, required this.resources, });

factory ResourceList.fromJson(Map<String, dynamic> json) { return ResourceList(
  apiVersion: json['apiVersion'] as String?,
  groupVersion: json['groupVersion'] as String,
  kind: json['kind'] as String?,
  resources: (json['resources'] as List<dynamic>).map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
final String? apiVersion;

/// groupVersion is the group and version this APIResourceList is for.
final String groupVersion;

/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
final String? kind;

/// resources contains the name of the resources and if they are namespaced.
final List<Resource> resources;

Map<String, dynamic> toJson() { return {
  'apiVersion': ?apiVersion,
  'groupVersion': groupVersion,
  'kind': ?kind,
  'resources': resources.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('groupVersion') && json['groupVersion'] is String &&
      json.containsKey('resources'); } 
ResourceList copyWith({String Function()? apiVersion, String? groupVersion, String Function()? kind, List<Resource>? resources, }) { return ResourceList(
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  groupVersion: groupVersion ?? this.groupVersion,
  kind: kind != null ? kind() : this.kind,
  resources: resources ?? this.resources,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceList &&
          apiVersion == other.apiVersion &&
          groupVersion == other.groupVersion &&
          kind == other.kind &&
          listEquals(resources, other.resources); } 
@override int get hashCode { return Object.hash(apiVersion, groupVersion, kind, Object.hashAll(resources)); } 
@override String toString() { return 'ResourceList(apiVersion: $apiVersion, groupVersion: $groupVersion, kind: $kind, resources: $resources)'; } 
 }
