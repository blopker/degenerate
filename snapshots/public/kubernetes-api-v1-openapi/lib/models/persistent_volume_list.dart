// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'list_meta.dart';import 'persistent_volume.dart';/// PersistentVolumeList is a list of PersistentVolume items.
final class PersistentVolumeList {const PersistentVolumeList({this.apiVersion, required this.items, this.kind, this.metadata, });

factory PersistentVolumeList.fromJson(Map<String, dynamic> json) { return PersistentVolumeList(
  apiVersion: json['apiVersion'] as String?,
  items: (json['items'] as List<dynamic>).map((e) => PersistentVolume.fromJson(e as Map<String, dynamic>)).toList(),
  kind: json['kind'] as String?,
  metadata: json['metadata'] != null ? ListMeta.fromJson(json['metadata'] as Map<String, dynamic>) : null,
); }

/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
final String? apiVersion;

/// items is a list of persistent volumes. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes
final List<PersistentVolume> items;

/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
final String? kind;

/// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
final ListMeta? metadata;

Map<String, dynamic> toJson() { return {
  'apiVersion': ?apiVersion,
  'items': items.map((e) => e.toJson()).toList(),
  'kind': ?kind,
  if (metadata != null) 'metadata': metadata?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items'); } 
PersistentVolumeList copyWith({String Function()? apiVersion, List<PersistentVolume>? items, String Function()? kind, ListMeta Function()? metadata, }) { return PersistentVolumeList(
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  items: items ?? this.items,
  kind: kind != null ? kind() : this.kind,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersistentVolumeList &&
          apiVersion == other.apiVersion &&
          listEquals(items, other.items) &&
          kind == other.kind &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(apiVersion, Object.hashAll(items), kind, metadata); } 
@override String toString() { return 'PersistentVolumeList(apiVersion: $apiVersion, items: $items, kind: $kind, metadata: $metadata)'; } 
 }
