// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Contains namespace with metadata details.
@immutable final class R2DataCatalogNamespaceDetails {const R2DataCatalogNamespaceDetails({required this.namespace, required this.namespaceUuid, this.createdAt = const Omittable.absent(), this.updatedAt = const Omittable.absent(), });

factory R2DataCatalogNamespaceDetails.fromJson(Map<String, dynamic> json) { return R2DataCatalogNamespaceDetails(
  createdAt: json.containsKey('created_at') ? Omittable(json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null) : const Omittable.absent(),
  namespace: (json['namespace'] as List<dynamic>).map((e) => e as String).toList(),
  namespaceUuid: json['namespace_uuid'] as String,
  updatedAt: json.containsKey('updated_at') ? Omittable(json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null) : const Omittable.absent(),
); }

/// Indicates the creation timestamp in ISO 8601 format.
final Omittable<DateTime?> createdAt;

final List<String> namespace;

/// Contains the UUID that persists across renames.
final String namespaceUuid;

/// Shows the last update timestamp in ISO 8601 format. Null if never updated.
final Omittable<DateTime?> updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt.isPresent) 'created_at': createdAt.value?.toIso8601String(),
  'namespace': namespace,
  'namespace_uuid': namespaceUuid,
  if (updatedAt.isPresent) 'updated_at': updatedAt.value?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('namespace') &&
      json.containsKey('namespace_uuid') && json['namespace_uuid'] is String; } 
R2DataCatalogNamespaceDetails copyWith({Omittable<DateTime?>? createdAt, List<String>? namespace, String? namespaceUuid, Omittable<DateTime?>? updatedAt, }) { return R2DataCatalogNamespaceDetails(
  createdAt: createdAt ?? this.createdAt,
  namespace: namespace ?? this.namespace,
  namespaceUuid: namespaceUuid ?? this.namespaceUuid,
  updatedAt: updatedAt ?? this.updatedAt,
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
