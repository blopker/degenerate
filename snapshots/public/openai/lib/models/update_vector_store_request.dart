// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vector_store_expiration_after.dart';@immutable final class UpdateVectorStoreRequest {const UpdateVectorStoreRequest({this.name = const Omittable.absent(), this.expiresAfter = const Omittable.absent(), this.metadata = const Omittable.absent(), });

factory UpdateVectorStoreRequest.fromJson(Map<String, dynamic> json) { return UpdateVectorStoreRequest(
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  expiresAfter: json.containsKey('expires_after') ? Omittable(json['expires_after'] != null ? VectorStoreExpirationAfter.fromJson(json['expires_after'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
); }

/// The name of the vector store.
final Omittable<String?> name;

final Omittable<VectorStoreExpirationAfter?> expiresAfter;

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard.
/// 
/// Keys are strings with a maximum length of 64 characters. Values are strings
/// with a maximum length of 512 characters.
/// 
final Omittable<Map<String,String>?> metadata;

Map<String, dynamic> toJson() { return {
  if (name.isPresent) 'name': name.value,
  if (expiresAfter.isPresent) 'expires_after': expiresAfter.value?.toJson(),
  if (metadata.isPresent) 'metadata': metadata.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'expires_after', 'metadata'}.contains(key)); } 
UpdateVectorStoreRequest copyWith({Omittable<String?>? name, Omittable<VectorStoreExpirationAfter?>? expiresAfter, Omittable<Map<String,String>?>? metadata, }) { return UpdateVectorStoreRequest(
  name: name ?? this.name,
  expiresAfter: expiresAfter ?? this.expiresAfter,
  metadata: metadata ?? this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateVectorStoreRequest &&
          name == other.name &&
          expiresAfter == other.expiresAfter &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(name, expiresAfter, metadata); } 
@override String toString() { return 'UpdateVectorStoreRequest(name: $name, expiresAfter: $expiresAfter, metadata: $metadata)'; } 
 }
