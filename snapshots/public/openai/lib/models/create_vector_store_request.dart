// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'auto_chunking_strategy_request_param.dart';import 'create_vector_store_request_chunking_strategy.dart';import 'static_chunking_strategy_request_param.dart';import 'vector_store_expiration_after.dart';@immutable final class CreateVectorStoreRequest {const CreateVectorStoreRequest({this.fileIds, this.name, this.description, this.expiresAfter, this.chunkingStrategy, this.metadata, });

factory CreateVectorStoreRequest.fromJson(Map<String, dynamic> json) { return CreateVectorStoreRequest(
  fileIds: (json['file_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  expiresAfter: json['expires_after'] != null ? VectorStoreExpirationAfter.fromJson(json['expires_after'] as Map<String, dynamic>) : null,
  chunkingStrategy: json['chunking_strategy'] != null ? OneOf2.parse(json['chunking_strategy'], fromA: (v) => AutoChunkingStrategyRequestParam.fromJson(v as Map<String, dynamic>), fromB: (v) => StaticChunkingStrategyRequestParam.fromJson(v as Map<String, dynamic>),) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// A list of [File](/docs/api-reference/files) IDs that the vector store should use. Useful for tools like `file_search` that can access files.
final List<String>? fileIds;

/// The name of the vector store.
final String? name;

/// A description for the vector store. Can be used to describe the vector store's purpose.
final String? description;

final VectorStoreExpirationAfter? expiresAfter;

/// The chunking strategy used to chunk the file(s). If not set, will use the `auto` strategy. Only applicable if `file_ids` is non-empty.
final CreateVectorStoreRequestChunkingStrategy? chunkingStrategy;

final Map<String,String>? metadata;

Map<String, dynamic> toJson() { return {
  'file_ids': ?fileIds,
  'name': ?name,
  'description': ?description,
  if (expiresAfter != null) 'expires_after': expiresAfter?.toJson(),
  if (chunkingStrategy != null) 'chunking_strategy': chunkingStrategy?.toJson(),
  'metadata': ?metadata,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'file_ids', 'name', 'description', 'expires_after', 'chunking_strategy', 'metadata'}.contains(key)); } 
CreateVectorStoreRequest copyWith({List<String> Function()? fileIds, String Function()? name, String Function()? description, VectorStoreExpirationAfter Function()? expiresAfter, CreateVectorStoreRequestChunkingStrategy Function()? chunkingStrategy, Map<String, String>? Function()? metadata, }) { return CreateVectorStoreRequest(
  fileIds: fileIds != null ? fileIds() : this.fileIds,
  name: name != null ? name() : this.name,
  description: description != null ? description() : this.description,
  expiresAfter: expiresAfter != null ? expiresAfter() : this.expiresAfter,
  chunkingStrategy: chunkingStrategy != null ? chunkingStrategy() : this.chunkingStrategy,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateVectorStoreRequest &&
          listEquals(fileIds, other.fileIds) &&
          name == other.name &&
          description == other.description &&
          expiresAfter == other.expiresAfter &&
          chunkingStrategy == other.chunkingStrategy &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(Object.hashAll(fileIds ?? const []), name, description, expiresAfter, chunkingStrategy, metadata); } 
@override String toString() { return 'CreateVectorStoreRequest(fileIds: $fileIds, name: $name, description: $description, expiresAfter: $expiresAfter, chunkingStrategy: $chunkingStrategy, metadata: $metadata)'; } 
 }
