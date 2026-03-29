// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vector_store_expiration_after.dart';final class UpdateVectorStoreRequest {const UpdateVectorStoreRequest({this.name, this.expiresAfter, this.metadata, });

factory UpdateVectorStoreRequest.fromJson(Map<String, dynamic> json) { return UpdateVectorStoreRequest(
  name: json['name'] as String?,
  expiresAfter: json['expires_after'] != null ? VectorStoreExpirationAfter.fromJson(json['expires_after'] as Map<String, dynamic>) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// The name of the vector store.
final String? name;

final VectorStoreExpirationAfter? expiresAfter;

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard.
/// 
/// Keys are strings with a maximum length of 64 characters. Values are strings
/// with a maximum length of 512 characters.
/// 
final Map<String,String>? metadata;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  if (expiresAfter != null) 'expires_after': expiresAfter?.toJson(),
  'metadata': ?metadata,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UpdateVectorStoreRequest copyWith({String? Function()? name, VectorStoreExpirationAfter? Function()? expiresAfter, Map<String, String>? Function()? metadata, }) { return UpdateVectorStoreRequest(
  name: name != null ? name() : this.name,
  expiresAfter: expiresAfter != null ? expiresAfter() : this.expiresAfter,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateVectorStoreRequest &&
          name == other.name &&
          expiresAfter == other.expiresAfter &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(name, expiresAfter, metadata); } 
@override String toString() { return 'UpdateVectorStoreRequest(name: $name, expiresAfter: $expiresAfter, metadata: $metadata)'; } 
 }
