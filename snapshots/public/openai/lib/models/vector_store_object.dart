// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vector_store_expiration_after.dart';import 'vector_store_object_file_counts.dart';/// The object type, which is always `vector_store`.
@immutable final class VectorStoreObjectObject {const VectorStoreObjectObject._(this.value);

factory VectorStoreObjectObject.fromJson(String json) { return switch (json) {
  'vector_store' => vectorStore,
  _ => VectorStoreObjectObject._(json),
}; }

static const VectorStoreObjectObject vectorStore = VectorStoreObjectObject._('vector_store');

static const List<VectorStoreObjectObject> values = [vectorStore];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is VectorStoreObjectObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'VectorStoreObjectObject($value)'; } 
 }
/// The status of the vector store, which can be either `expired`, `in_progress`, or `completed`. A status of `completed` indicates that the vector store is ready for use.
@immutable final class VectorStoreObjectStatus {const VectorStoreObjectStatus._(this.value);

factory VectorStoreObjectStatus.fromJson(String json) { return switch (json) {
  'expired' => expired,
  'in_progress' => inProgress,
  'completed' => completed,
  _ => VectorStoreObjectStatus._(json),
}; }

static const VectorStoreObjectStatus expired = VectorStoreObjectStatus._('expired');

static const VectorStoreObjectStatus inProgress = VectorStoreObjectStatus._('in_progress');

static const VectorStoreObjectStatus completed = VectorStoreObjectStatus._('completed');

static const List<VectorStoreObjectStatus> values = [expired, inProgress, completed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is VectorStoreObjectStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'VectorStoreObjectStatus($value)'; } 
 }
/// A vector store is a collection of processed files can be used by the `file_search` tool.
@immutable final class VectorStoreObject {const VectorStoreObject({required this.id, required this.object, required this.createdAt, required this.name, required this.usageBytes, required this.fileCounts, required this.status, required this.lastActiveAt, required this.metadata, this.expiresAfter, this.expiresAt, });

factory VectorStoreObject.fromJson(Map<String, dynamic> json) { return VectorStoreObject(
  id: json['id'] as String,
  object: VectorStoreObjectObject.fromJson(json['object'] as String),
  createdAt: (json['created_at'] as num).toInt(),
  name: json['name'] as String,
  usageBytes: (json['usage_bytes'] as num).toInt(),
  fileCounts: VectorStoreObjectFileCounts.fromJson(json['file_counts'] as Map<String, dynamic>),
  status: VectorStoreObjectStatus.fromJson(json['status'] as String),
  expiresAfter: json['expires_after'] != null ? VectorStoreExpirationAfter.fromJson(json['expires_after'] as Map<String, dynamic>) : null,
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
  lastActiveAt: json['last_active_at'] != null ? (json['last_active_at'] as num).toInt() : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// The identifier, which can be referenced in API endpoints.
final String id;

/// The object type, which is always `vector_store`.
final VectorStoreObjectObject object;

/// The Unix timestamp (in seconds) for when the vector store was created.
final int createdAt;

/// The name of the vector store.
final String name;

/// The total number of bytes used by the files in the vector store.
final int usageBytes;

final VectorStoreObjectFileCounts fileCounts;

/// The status of the vector store, which can be either `expired`, `in_progress`, or `completed`. A status of `completed` indicates that the vector store is ready for use.
final VectorStoreObjectStatus status;

final VectorStoreExpirationAfter? expiresAfter;

/// The Unix timestamp (in seconds) for when the vector store will expire.
final int? expiresAt;

/// The Unix timestamp (in seconds) for when the vector store was last active.
final int? lastActiveAt;

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard.
/// 
/// Keys are strings with a maximum length of 64 characters. Values are strings
/// with a maximum length of 512 characters.
/// 
final Map<String,String>? metadata;

Map<String, dynamic> toJson() { return {
  'id': id,
  'object': object.toJson(),
  'created_at': createdAt,
  'name': name,
  'usage_bytes': usageBytes,
  'file_counts': fileCounts.toJson(),
  'status': status.toJson(),
  if (expiresAfter != null) 'expires_after': expiresAfter?.toJson(),
  'expires_at': ?expiresAt,
  'last_active_at': ?lastActiveAt,
  'metadata': ?metadata,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('usage_bytes') && json['usage_bytes'] is num &&
      json.containsKey('file_counts') &&
      json.containsKey('status') &&
      json.containsKey('last_active_at') && json['last_active_at'] is num &&
      json.containsKey('metadata'); } 
VectorStoreObject copyWith({String? id, VectorStoreObjectObject? object, int? createdAt, String? name, int? usageBytes, VectorStoreObjectFileCounts? fileCounts, VectorStoreObjectStatus? status, VectorStoreExpirationAfter Function()? expiresAfter, int? Function()? expiresAt, int? Function()? lastActiveAt, Map<String, String>? Function()? metadata, }) { return VectorStoreObject(
  id: id ?? this.id,
  object: object ?? this.object,
  createdAt: createdAt ?? this.createdAt,
  name: name ?? this.name,
  usageBytes: usageBytes ?? this.usageBytes,
  fileCounts: fileCounts ?? this.fileCounts,
  status: status ?? this.status,
  expiresAfter: expiresAfter != null ? expiresAfter() : this.expiresAfter,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  lastActiveAt: lastActiveAt != null ? lastActiveAt() : this.lastActiveAt,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorStoreObject &&
          id == other.id &&
          object == other.object &&
          createdAt == other.createdAt &&
          name == other.name &&
          usageBytes == other.usageBytes &&
          fileCounts == other.fileCounts &&
          status == other.status &&
          expiresAfter == other.expiresAfter &&
          expiresAt == other.expiresAt &&
          lastActiveAt == other.lastActiveAt &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(id, object, createdAt, name, usageBytes, fileCounts, status, expiresAfter, expiresAt, lastActiveAt, metadata); } 
@override String toString() { return 'VectorStoreObject(id: $id, object: $object, createdAt: $createdAt, name: $name, usageBytes: $usageBytes, fileCounts: $fileCounts, status: $status, expiresAfter: $expiresAfter, expiresAt: $expiresAt, lastActiveAt: $lastActiveAt, metadata: $metadata)'; } 
 }
