// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_delete_instances_response_result_ai_search_model.dart';import 'ai_search_delete_instances_response_result_custom_metadata.dart';import 'ai_search_delete_instances_response_result_embedding_model.dart';import 'ai_search_delete_instances_response_result_metadata.dart';import 'ai_search_delete_instances_response_result_public_endpoint_params.dart';import 'ai_search_delete_instances_response_result_retrieval_options.dart';import 'ai_search_delete_instances_response_result_rewrite_model.dart';import 'ai_search_delete_instances_response_result_source_params.dart';@immutable final class AiSearchDeleteInstancesResponseResultRerankingModel {const AiSearchDeleteInstancesResponseResultRerankingModel._(this.value);

factory AiSearchDeleteInstancesResponseResultRerankingModel.fromJson(String json) { return switch (json) {
  '@cf/baai/bge-reranker-base' => cfBaaiBgeRerankerBase,
  '' => $empty,
  _ => AiSearchDeleteInstancesResponseResultRerankingModel._(json),
}; }

static const AiSearchDeleteInstancesResponseResultRerankingModel cfBaaiBgeRerankerBase = AiSearchDeleteInstancesResponseResultRerankingModel._('@cf/baai/bge-reranker-base');

static const AiSearchDeleteInstancesResponseResultRerankingModel $empty = AiSearchDeleteInstancesResponseResultRerankingModel._('');

static const List<AiSearchDeleteInstancesResponseResultRerankingModel> values = [cfBaaiBgeRerankerBase, $empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchDeleteInstancesResponseResultRerankingModel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchDeleteInstancesResponseResultRerankingModel($value)'; } 
 }
@immutable final class AiSearchDeleteInstancesResponseResultCacheThreshold {const AiSearchDeleteInstancesResponseResultCacheThreshold._(this.value);

factory AiSearchDeleteInstancesResponseResultCacheThreshold.fromJson(String json) { return switch (json) {
  'super_strict_match' => superStrictMatch,
  'close_enough' => closeEnough,
  'flexible_friend' => flexibleFriend,
  'anything_goes' => anythingGoes,
  _ => AiSearchDeleteInstancesResponseResultCacheThreshold._(json),
}; }

static const AiSearchDeleteInstancesResponseResultCacheThreshold superStrictMatch = AiSearchDeleteInstancesResponseResultCacheThreshold._('super_strict_match');

static const AiSearchDeleteInstancesResponseResultCacheThreshold closeEnough = AiSearchDeleteInstancesResponseResultCacheThreshold._('close_enough');

static const AiSearchDeleteInstancesResponseResultCacheThreshold flexibleFriend = AiSearchDeleteInstancesResponseResultCacheThreshold._('flexible_friend');

static const AiSearchDeleteInstancesResponseResultCacheThreshold anythingGoes = AiSearchDeleteInstancesResponseResultCacheThreshold._('anything_goes');

static const List<AiSearchDeleteInstancesResponseResultCacheThreshold> values = [superStrictMatch, closeEnough, flexibleFriend, anythingGoes];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchDeleteInstancesResponseResultCacheThreshold && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchDeleteInstancesResponseResultCacheThreshold($value)'; } 
 }
@immutable final class AiSearchDeleteInstancesResponseResultFusionMethod {const AiSearchDeleteInstancesResponseResultFusionMethod._(this.value);

factory AiSearchDeleteInstancesResponseResultFusionMethod.fromJson(String json) { return switch (json) {
  'max' => max,
  'rrf' => rrf,
  _ => AiSearchDeleteInstancesResponseResultFusionMethod._(json),
}; }

static const AiSearchDeleteInstancesResponseResultFusionMethod max = AiSearchDeleteInstancesResponseResultFusionMethod._('max');

static const AiSearchDeleteInstancesResponseResultFusionMethod rrf = AiSearchDeleteInstancesResponseResultFusionMethod._('rrf');

static const List<AiSearchDeleteInstancesResponseResultFusionMethod> values = [max, rrf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchDeleteInstancesResponseResultFusionMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchDeleteInstancesResponseResultFusionMethod($value)'; } 
 }
@immutable final class AiSearchDeleteInstancesResponseResultType {const AiSearchDeleteInstancesResponseResultType._(this.value);

factory AiSearchDeleteInstancesResponseResultType.fromJson(String json) { return switch (json) {
  'r2' => r2,
  'web-crawler' => webCrawler,
  _ => AiSearchDeleteInstancesResponseResultType._(json),
}; }

static const AiSearchDeleteInstancesResponseResultType r2 = AiSearchDeleteInstancesResponseResultType._('r2');

static const AiSearchDeleteInstancesResponseResultType webCrawler = AiSearchDeleteInstancesResponseResultType._('web-crawler');

static const List<AiSearchDeleteInstancesResponseResultType> values = [r2, webCrawler];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchDeleteInstancesResponseResultType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchDeleteInstancesResponseResultType($value)'; } 
 }
@immutable final class AiSearchDeleteInstancesResponseResult {const AiSearchDeleteInstancesResponseResult({required this.vectorizeName, required this.createdAt, required this.id, required this.modifiedAt, this.fusionMethod, this.chunkSize, this.aiSearchModel, this.createdBy = const Omittable.absent(), this.customMetadata, this.embeddingModel, this.enable, this.aiGatewayId = const Omittable.absent(), this.hybridSearchEnabled, this.cache, this.lastActivity = const Omittable.absent(), this.maxNumResults, this.metadata, this.cacheThreshold, this.modifiedBy = const Omittable.absent(), this.paused, this.publicEndpointId = const Omittable.absent(), this.chunkOverlap, this.reranking, this.rerankingModel, this.retrievalOptions = const Omittable.absent(), this.rewriteModel, this.rewriteQuery, this.scoreThreshold, this.source, this.sourceParams = const Omittable.absent(), this.status, this.tokenId, this.type, this.publicEndpointParams, });

factory AiSearchDeleteInstancesResponseResult.fromJson(Map<String, dynamic> json) { return AiSearchDeleteInstancesResponseResult(
  aiGatewayId: json.containsKey('ai_gateway_id') ? Omittable(json['ai_gateway_id'] as String?) : const Omittable.absent(),
  aiSearchModel: json['ai_search_model'] != null ? AiSearchDeleteInstancesResponseResultAiSearchModel.fromJson(json['ai_search_model']) : null,
  cache: json['cache'] as bool?,
  cacheThreshold: json['cache_threshold'] != null ? AiSearchDeleteInstancesResponseResultCacheThreshold.fromJson(json['cache_threshold'] as String) : null,
  chunkOverlap: json['chunk_overlap'] != null ? (json['chunk_overlap'] as num).toInt() : null,
  chunkSize: json['chunk_size'] != null ? (json['chunk_size'] as num).toInt() : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  createdBy: json.containsKey('created_by') ? Omittable(json['created_by'] as String?) : const Omittable.absent(),
  customMetadata: (json['custom_metadata'] as List<dynamic>?)?.map((e) => AiSearchDeleteInstancesResponseResultCustomMetadata.fromJson(e as Map<String, dynamic>)).toList(),
  embeddingModel: json['embedding_model'] != null ? AiSearchDeleteInstancesResponseResultEmbeddingModel.fromJson(json['embedding_model']) : null,
  enable: json['enable'] as bool?,
  fusionMethod: json['fusion_method'] != null ? AiSearchDeleteInstancesResponseResultFusionMethod.fromJson(json['fusion_method'] as String) : null,
  hybridSearchEnabled: json['hybrid_search_enabled'] as bool?,
  id: json['id'] as String,
  lastActivity: json.containsKey('last_activity') ? Omittable(json['last_activity'] != null ? DateTime.parse(json['last_activity'] as String) : null) : const Omittable.absent(),
  maxNumResults: json['max_num_results'] != null ? (json['max_num_results'] as num).toInt() : null,
  metadata: json['metadata'] != null ? AiSearchDeleteInstancesResponseResultMetadata.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  modifiedBy: json.containsKey('modified_by') ? Omittable(json['modified_by'] as String?) : const Omittable.absent(),
  paused: json['paused'] as bool?,
  publicEndpointId: json.containsKey('public_endpoint_id') ? Omittable(json['public_endpoint_id'] as String?) : const Omittable.absent(),
  publicEndpointParams: json['public_endpoint_params'] != null ? AiSearchDeleteInstancesResponseResultPublicEndpointParams.fromJson(json['public_endpoint_params'] as Map<String, dynamic>) : null,
  reranking: json['reranking'] as bool?,
  rerankingModel: json['reranking_model'] != null ? AiSearchDeleteInstancesResponseResultRerankingModel.fromJson(json['reranking_model'] as String) : null,
  retrievalOptions: json.containsKey('retrieval_options') ? Omittable(json['retrieval_options'] != null ? AiSearchDeleteInstancesResponseResultRetrievalOptions.fromJson(json['retrieval_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  rewriteModel: json['rewrite_model'] != null ? AiSearchDeleteInstancesResponseResultRewriteModel.fromJson(json['rewrite_model']) : null,
  rewriteQuery: json['rewrite_query'] as bool?,
  scoreThreshold: json['score_threshold'] != null ? (json['score_threshold'] as num).toDouble() : null,
  source: json['source'] as String?,
  sourceParams: json.containsKey('source_params') ? Omittable(json['source_params'] != null ? AiSearchDeleteInstancesResponseResultSourceParams.fromJson(json['source_params'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  status: json['status'] as String?,
  tokenId: json['token_id'] as String?,
  type: json['type'] != null ? AiSearchDeleteInstancesResponseResultType.fromJson(json['type'] as String) : null,
  vectorizeName: json['vectorize_name'] as String,
); }

final Omittable<String?> aiGatewayId;

final AiSearchDeleteInstancesResponseResultAiSearchModel? aiSearchModel;

final bool? cache;

final AiSearchDeleteInstancesResponseResultCacheThreshold? cacheThreshold;

final int? chunkOverlap;

final int? chunkSize;

final DateTime createdAt;

final Omittable<String?> createdBy;

final List<AiSearchDeleteInstancesResponseResultCustomMetadata>? customMetadata;

final AiSearchDeleteInstancesResponseResultEmbeddingModel? embeddingModel;

final bool? enable;

final AiSearchDeleteInstancesResponseResultFusionMethod? fusionMethod;

final bool? hybridSearchEnabled;

/// Use your AI Search ID.
final String id;

final Omittable<DateTime?> lastActivity;

final int? maxNumResults;

final AiSearchDeleteInstancesResponseResultMetadata? metadata;

final DateTime modifiedAt;

final Omittable<String?> modifiedBy;

final bool? paused;

final Omittable<String?> publicEndpointId;

final AiSearchDeleteInstancesResponseResultPublicEndpointParams? publicEndpointParams;

final bool? reranking;

final AiSearchDeleteInstancesResponseResultRerankingModel? rerankingModel;

final Omittable<AiSearchDeleteInstancesResponseResultRetrievalOptions?> retrievalOptions;

final AiSearchDeleteInstancesResponseResultRewriteModel? rewriteModel;

final bool? rewriteQuery;

final double? scoreThreshold;

final String? source;

final Omittable<AiSearchDeleteInstancesResponseResultSourceParams?> sourceParams;

final String? status;

final String? tokenId;

final AiSearchDeleteInstancesResponseResultType? type;

final String vectorizeName;

/// The value with the schema default applied when absent.
bool get cacheOrDefault { return cache ?? true; } 
/// The value with the schema default applied when absent.
AiSearchDeleteInstancesResponseResultCacheThreshold get cacheThresholdOrDefault { return cacheThreshold ?? AiSearchDeleteInstancesResponseResultCacheThreshold.fromJson('close_enough'); } 
/// The value with the schema default applied when absent.
int get chunkOverlapOrDefault { return chunkOverlap ?? 10; } 
/// The value with the schema default applied when absent.
int get chunkSizeOrDefault { return chunkSize ?? 256; } 
/// The value with the schema default applied when absent.
bool get enableOrDefault { return enable ?? true; } 
/// The value with the schema default applied when absent.
AiSearchDeleteInstancesResponseResultFusionMethod get fusionMethodOrDefault { return fusionMethod ?? AiSearchDeleteInstancesResponseResultFusionMethod.fromJson('rrf'); } 
/// The value with the schema default applied when absent.
bool get hybridSearchEnabledOrDefault { return hybridSearchEnabled ?? false; } 
/// The value with the schema default applied when absent.
int get maxNumResultsOrDefault { return maxNumResults ?? 10; } 
/// The value with the schema default applied when absent.
bool get pausedOrDefault { return paused ?? false; } 
/// The value with the schema default applied when absent.
bool get rerankingOrDefault { return reranking ?? false; } 
/// The value with the schema default applied when absent.
bool get rewriteQueryOrDefault { return rewriteQuery ?? false; } 
/// The value with the schema default applied when absent.
double get scoreThresholdOrDefault { return scoreThreshold ?? 0.4; } 
/// The value with the schema default applied when absent.
String get statusOrDefault { return status ?? 'waiting'; } 
Map<String, dynamic> toJson() { return {
  if (aiGatewayId.isPresent) 'ai_gateway_id': aiGatewayId.value,
  if (aiSearchModel != null) 'ai_search_model': aiSearchModel?.toJson(),
  'cache': ?cache,
  if (cacheThreshold != null) 'cache_threshold': cacheThreshold?.toJson(),
  'chunk_overlap': ?chunkOverlap,
  'chunk_size': ?chunkSize,
  'created_at': createdAt.toIso8601String(),
  if (createdBy.isPresent) 'created_by': createdBy.value,
  if (customMetadata != null) 'custom_metadata': customMetadata?.map((e) => e.toJson()).toList(),
  if (embeddingModel != null) 'embedding_model': embeddingModel?.toJson(),
  'enable': ?enable,
  if (fusionMethod != null) 'fusion_method': fusionMethod?.toJson(),
  'hybrid_search_enabled': ?hybridSearchEnabled,
  'id': id,
  if (lastActivity.isPresent) 'last_activity': lastActivity.value?.toIso8601String(),
  'max_num_results': ?maxNumResults,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'modified_at': modifiedAt.toIso8601String(),
  if (modifiedBy.isPresent) 'modified_by': modifiedBy.value,
  'paused': ?paused,
  if (publicEndpointId.isPresent) 'public_endpoint_id': publicEndpointId.value,
  if (publicEndpointParams != null) 'public_endpoint_params': publicEndpointParams?.toJson(),
  'reranking': ?reranking,
  if (rerankingModel != null) 'reranking_model': rerankingModel?.toJson(),
  if (retrievalOptions.isPresent) 'retrieval_options': retrievalOptions.value?.toJson(),
  if (rewriteModel != null) 'rewrite_model': rewriteModel?.toJson(),
  'rewrite_query': ?rewriteQuery,
  'score_threshold': ?scoreThreshold,
  'source': ?source,
  if (sourceParams.isPresent) 'source_params': sourceParams.value?.toJson(),
  'status': ?status,
  'token_id': ?tokenId,
  if (type != null) 'type': type?.toJson(),
  'vectorize_name': vectorizeName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_at') && json['modified_at'] is String &&
      json.containsKey('vectorize_name') && json['vectorize_name'] is String; } 
AiSearchDeleteInstancesResponseResult copyWith({Omittable<String?>? aiGatewayId, AiSearchDeleteInstancesResponseResultAiSearchModel? Function()? aiSearchModel, bool? Function()? cache, AiSearchDeleteInstancesResponseResultCacheThreshold? Function()? cacheThreshold, int? Function()? chunkOverlap, int? Function()? chunkSize, DateTime? createdAt, Omittable<String?>? createdBy, List<AiSearchDeleteInstancesResponseResultCustomMetadata>? Function()? customMetadata, AiSearchDeleteInstancesResponseResultEmbeddingModel? Function()? embeddingModel, bool? Function()? enable, AiSearchDeleteInstancesResponseResultFusionMethod? Function()? fusionMethod, bool? Function()? hybridSearchEnabled, String? id, Omittable<DateTime?>? lastActivity, int? Function()? maxNumResults, AiSearchDeleteInstancesResponseResultMetadata? Function()? metadata, DateTime? modifiedAt, Omittable<String?>? modifiedBy, bool? Function()? paused, Omittable<String?>? publicEndpointId, AiSearchDeleteInstancesResponseResultPublicEndpointParams? Function()? publicEndpointParams, bool? Function()? reranking, AiSearchDeleteInstancesResponseResultRerankingModel? Function()? rerankingModel, Omittable<AiSearchDeleteInstancesResponseResultRetrievalOptions?>? retrievalOptions, AiSearchDeleteInstancesResponseResultRewriteModel? Function()? rewriteModel, bool? Function()? rewriteQuery, double? Function()? scoreThreshold, String? Function()? source, Omittable<AiSearchDeleteInstancesResponseResultSourceParams?>? sourceParams, String? Function()? status, String? Function()? tokenId, AiSearchDeleteInstancesResponseResultType? Function()? type, String? vectorizeName, }) { return AiSearchDeleteInstancesResponseResult(
  aiGatewayId: aiGatewayId ?? this.aiGatewayId,
  aiSearchModel: aiSearchModel != null ? aiSearchModel() : this.aiSearchModel,
  cache: cache != null ? cache() : this.cache,
  cacheThreshold: cacheThreshold != null ? cacheThreshold() : this.cacheThreshold,
  chunkOverlap: chunkOverlap != null ? chunkOverlap() : this.chunkOverlap,
  chunkSize: chunkSize != null ? chunkSize() : this.chunkSize,
  createdAt: createdAt ?? this.createdAt,
  createdBy: createdBy ?? this.createdBy,
  customMetadata: customMetadata != null ? customMetadata() : this.customMetadata,
  embeddingModel: embeddingModel != null ? embeddingModel() : this.embeddingModel,
  enable: enable != null ? enable() : this.enable,
  fusionMethod: fusionMethod != null ? fusionMethod() : this.fusionMethod,
  hybridSearchEnabled: hybridSearchEnabled != null ? hybridSearchEnabled() : this.hybridSearchEnabled,
  id: id ?? this.id,
  lastActivity: lastActivity ?? this.lastActivity,
  maxNumResults: maxNumResults != null ? maxNumResults() : this.maxNumResults,
  metadata: metadata != null ? metadata() : this.metadata,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  modifiedBy: modifiedBy ?? this.modifiedBy,
  paused: paused != null ? paused() : this.paused,
  publicEndpointId: publicEndpointId ?? this.publicEndpointId,
  publicEndpointParams: publicEndpointParams != null ? publicEndpointParams() : this.publicEndpointParams,
  reranking: reranking != null ? reranking() : this.reranking,
  rerankingModel: rerankingModel != null ? rerankingModel() : this.rerankingModel,
  retrievalOptions: retrievalOptions ?? this.retrievalOptions,
  rewriteModel: rewriteModel != null ? rewriteModel() : this.rewriteModel,
  rewriteQuery: rewriteQuery != null ? rewriteQuery() : this.rewriteQuery,
  scoreThreshold: scoreThreshold != null ? scoreThreshold() : this.scoreThreshold,
  source: source != null ? source() : this.source,
  sourceParams: sourceParams ?? this.sourceParams,
  status: status != null ? status() : this.status,
  tokenId: tokenId != null ? tokenId() : this.tokenId,
  type: type != null ? type() : this.type,
  vectorizeName: vectorizeName ?? this.vectorizeName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchDeleteInstancesResponseResult &&
          aiGatewayId == other.aiGatewayId &&
          aiSearchModel == other.aiSearchModel &&
          cache == other.cache &&
          cacheThreshold == other.cacheThreshold &&
          chunkOverlap == other.chunkOverlap &&
          chunkSize == other.chunkSize &&
          createdAt == other.createdAt &&
          createdBy == other.createdBy &&
          listEquals(customMetadata, other.customMetadata) &&
          embeddingModel == other.embeddingModel &&
          enable == other.enable &&
          fusionMethod == other.fusionMethod &&
          hybridSearchEnabled == other.hybridSearchEnabled &&
          id == other.id &&
          lastActivity == other.lastActivity &&
          maxNumResults == other.maxNumResults &&
          metadata == other.metadata &&
          modifiedAt == other.modifiedAt &&
          modifiedBy == other.modifiedBy &&
          paused == other.paused &&
          publicEndpointId == other.publicEndpointId &&
          publicEndpointParams == other.publicEndpointParams &&
          reranking == other.reranking &&
          rerankingModel == other.rerankingModel &&
          retrievalOptions == other.retrievalOptions &&
          rewriteModel == other.rewriteModel &&
          rewriteQuery == other.rewriteQuery &&
          scoreThreshold == other.scoreThreshold &&
          source == other.source &&
          sourceParams == other.sourceParams &&
          status == other.status &&
          tokenId == other.tokenId &&
          type == other.type &&
          vectorizeName == other.vectorizeName; } 
@override int get hashCode { return Object.hashAll([aiGatewayId, aiSearchModel, cache, cacheThreshold, chunkOverlap, chunkSize, createdAt, createdBy, Object.hashAll(customMetadata ?? const []), embeddingModel, enable, fusionMethod, hybridSearchEnabled, id, lastActivity, maxNumResults, metadata, modifiedAt, modifiedBy, paused, publicEndpointId, publicEndpointParams, reranking, rerankingModel, retrievalOptions, rewriteModel, rewriteQuery, scoreThreshold, source, sourceParams, status, tokenId, type, vectorizeName]); } 
@override String toString() { return 'AiSearchDeleteInstancesResponseResult(aiGatewayId: $aiGatewayId, aiSearchModel: $aiSearchModel, cache: $cache, cacheThreshold: $cacheThreshold, chunkOverlap: $chunkOverlap, chunkSize: $chunkSize, createdAt: $createdAt, createdBy: $createdBy, customMetadata: $customMetadata, embeddingModel: $embeddingModel, enable: $enable, fusionMethod: $fusionMethod, hybridSearchEnabled: $hybridSearchEnabled, id: $id, lastActivity: $lastActivity, maxNumResults: $maxNumResults, metadata: $metadata, modifiedAt: $modifiedAt, modifiedBy: $modifiedBy, paused: $paused, publicEndpointId: $publicEndpointId, publicEndpointParams: $publicEndpointParams, reranking: $reranking, rerankingModel: $rerankingModel, retrievalOptions: $retrievalOptions, rewriteModel: $rewriteModel, rewriteQuery: $rewriteQuery, scoreThreshold: $scoreThreshold, source: $source, sourceParams: $sourceParams, status: $status, tokenId: $tokenId, type: $type, vectorizeName: $vectorizeName)'; } 
 }
