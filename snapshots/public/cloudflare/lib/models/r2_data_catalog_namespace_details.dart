// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Contains namespace with metadata details.
@immutable final class R2DataCatalogNamespaceDetails {const R2DataCatalogNamespaceDetails({required this.namespace, required this.namespaceUuid, this.createdAt, this.updatedAt, });

factory R2DataCatalogNamespaceDetails.fromJson(Map<String, dynamic> json) { return R2DataCatalogNamespaceDetails(
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  namespace: (json['namespace'] as List<dynamic>).map((e) => e as String).toList(),
  namespaceUuid: json['namespace_uuid'] as String,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
); }

/// Indicates the creation timestamp in ISO 8601 format.
final DateTime? createdAt;

final List<String> namespace;

/// Contains the UUID that persists across renames.
final String namespaceUuid;

/// Shows the last update timestamp in ISO 8601 format. Null if never updated.
final DateTime? updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  'namespace': namespace,
  'namespace_uuid': namespaceUuid,
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('namespace') &&
      json.containsKey('namespace_uuid') && json['namespace_uuid'] is String; } 
R2DataCatalogNamespaceDetails copyWith({DateTime? Function()? createdAt, List<String>? namespace, String? namespaceUuid, DateTime? Function()? updatedAt, }) { return R2DataCatalogNamespaceDetails(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  namespace: namespace ?? this.namespace,
  namespaceUuid: namespaceUuid ?? this.namespaceUuid,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DataCatalogNamespaceDetails &&
          createdAt == other.createdAt &&
          listEquals(namespace, other.namespace) &&
          namespaceUuid == other.namespaceUuid &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, Object.hashAll(namespace), namespaceUuid, updatedAt); } 
@override String toString() { return 'R2DataCatalogNamespaceDetails(createdAt: $createdAt, namespace: $namespace, namespaceUuid: $namespaceUuid, updatedAt: $updatedAt)'; } 
 }
