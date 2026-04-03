// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ContainerFileResource {const ContainerFileResource({required this.id, required this.object, required this.containerId, required this.createdAt, required this.bytes, required this.path, required this.source, });

factory ContainerFileResource.fromJson(Map<String, dynamic> json) { return ContainerFileResource(
  id: json['id'] as String,
  object: json['object'] as String,
  containerId: json['container_id'] as String,
  createdAt: (json['created_at'] as num).toInt(),
  bytes: (json['bytes'] as num).toInt(),
  path: json['path'] as String,
  source: json['source'] as String,
); }

/// Unique identifier for the file.
final String id;

/// The type of this object (`container.file`).
final String object;

/// The container this file belongs to.
final String containerId;

/// Unix timestamp (in seconds) when the file was created.
final int createdAt;

/// Size of the file in bytes.
final int bytes;

/// Path of the file in the container.
final String path;

/// Source of the file (e.g., `user`, `assistant`).
final String source;

Map<String, dynamic> toJson() { return {
  'id': id,
  'object': object,
  'container_id': containerId,
  'created_at': createdAt,
  'bytes': bytes,
  'path': path,
  'source': source,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') && json['object'] is String &&
      json.containsKey('container_id') && json['container_id'] is String &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('bytes') && json['bytes'] is num &&
      json.containsKey('path') && json['path'] is String &&
      json.containsKey('source') && json['source'] is String; } 
ContainerFileResource copyWith({String? id, String? object, String? containerId, int? createdAt, int? bytes, String? path, String? source, }) { return ContainerFileResource(
  id: id ?? this.id,
  object: object ?? this.object,
  containerId: containerId ?? this.containerId,
  createdAt: createdAt ?? this.createdAt,
  bytes: bytes ?? this.bytes,
  path: path ?? this.path,
  source: source ?? this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerFileResource &&
          id == other.id &&
          object == other.object &&
          containerId == other.containerId &&
          createdAt == other.createdAt &&
          bytes == other.bytes &&
          path == other.path &&
          source == other.source; } 
@override int get hashCode { return Object.hash(id, object, containerId, createdAt, bytes, path, source); } 
@override String toString() { return 'ContainerFileResource(id: $id, object: $object, containerId: $containerId, createdAt: $createdAt, bytes: $bytes, path: $path, source: $source)'; } 
 }
