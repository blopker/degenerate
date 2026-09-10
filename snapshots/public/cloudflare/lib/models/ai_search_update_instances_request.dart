// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_update_instances_request_ai_search_model.dart';import 'ai_search_update_instances_request_custom_metadata.dart';import 'ai_search_update_instances_request_embedding_model.dart';import 'ai_search_update_instances_request_metadata.dart';import 'ai_search_update_instances_request_public_endpoint_params.dart';import 'ai_search_update_instances_request_retrieval_options.dart';import 'ai_search_update_instances_request_rewrite_model.dart';import 'ai_search_update_instances_request_source_params.dart';import 'ai_search_update_instances_request_summarization_model.dart';@immutable final class AiSearchUpdateInstancesRequestRerankingModel {const AiSearchUpdateInstancesRequestRerankingModel._(this.value);

factory AiSearchUpdateInstancesRequestRerankingModel.fromJson(String json) { return switch (json) {
  '@cf/baai/bge-reranker-base' => cfBaaiBgeRerankerBase,
  '' => $empty,
  _ => AiSearchUpdateInstancesRequestRerankingModel._(json),
}; }

static const AiSearchUpdateInstancesRequestRerankingModel cfBaaiBgeRerankerBase = AiSearchUpdateInstancesRequestRerankingModel._('@cf/baai/bge-reranker-base');

static const AiSearchUpdateInstancesRequestRerankingModel $empty = AiSearchUpdateInstancesRequestRerankingModel._('');

static const List<AiSearchUpdateInstancesRequestRerankingModel> values = [cfBaaiBgeRerankerBase, $empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesRequestRerankingModel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesRequestRerankingModel($value)'; } 
 }
@immutable final class AiSearchUpdateInstancesRequestCacheThreshold {const AiSearchUpdateInstancesRequestCacheThreshold._(this.value);

factory AiSearchUpdateInstancesRequestCacheThreshold.fromJson(String json) { return switch (json) {
  'super_strict_match' => superStrictMatch,
  'close_enough' => closeEnough,
  'flexible_friend' => flexibleFriend,
  'anything_goes' => anythingGoes,
  _ => AiSearchUpdateInstancesRequestCacheThreshold._(json),
}; }

static const AiSearchUpdateInstancesRequestCacheThreshold superStrictMatch = AiSearchUpdateInstancesRequestCacheThreshold._('super_strict_match');

static const AiSearchUpdateInstancesRequestCacheThreshold closeEnough = AiSearchUpdateInstancesRequestCacheThreshold._('close_enough');

static const AiSearchUpdateInstancesRequestCacheThreshold flexibleFriend = AiSearchUpdateInstancesRequestCacheThreshold._('flexible_friend');

static const AiSearchUpdateInstancesRequestCacheThreshold anythingGoes = AiSearchUpdateInstancesRequestCacheThreshold._('anything_goes');

static const List<AiSearchUpdateInstancesRequestCacheThreshold> values = [superStrictMatch, closeEnough, flexibleFriend, anythingGoes];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesRequestCacheThreshold && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesRequestCacheThreshold($value)'; } 
 }
@immutable final class AiSearchUpdateInstancesRequestFusionMethod {const AiSearchUpdateInstancesRequestFusionMethod._(this.value);

factory AiSearchUpdateInstancesRequestFusionMethod.fromJson(String json) { return switch (json) {
  'max' => max,
  'rrf' => rrf,
  _ => AiSearchUpdateInstancesRequestFusionMethod._(json),
}; }

static const AiSearchUpdateInstancesRequestFusionMethod max = AiSearchUpdateInstancesRequestFusionMethod._('max');

static const AiSearchUpdateInstancesRequestFusionMethod rrf = AiSearchUpdateInstancesRequestFusionMethod._('rrf');

static const List<AiSearchUpdateInstancesRequestFusionMethod> values = [max, rrf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesRequestFusionMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesRequestFusionMethod($value)'; } 
 }
@immutable final class AiSearchUpdateInstancesRequest {const AiSearchUpdateInstancesRequest({this.aiGatewayId = const Omittable.absent(), this.aiSearchModel, this.cache, this.cacheThreshold, this.chunk, this.chunkOverlap, this.chunkSize, this.customMetadata, this.embeddingModel, this.fusionMethod, this.hybridSearchEnabled, this.maxNumResults, this.metadata, this.paused, this.publicEndpointParams, this.reranking, this.rerankingModel, this.retrievalOptions = const Omittable.absent(), this.rewriteModel, this.rewriteQuery, this.scoreThreshold, this.sourceParams = const Omittable.absent(), this.summarization, this.summarizationModel, this.systemPromptAiSearch = const Omittable.absent(), this.systemPromptIndexSummarization = const Omittable.absent(), this.systemPromptRewriteQuery = const Omittable.absent(), this.tokenId, });

factory AiSearchUpdateInstancesRequest.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesRequest(
  aiGatewayId: json.containsKey('ai_gateway_id') ? Omittable(json['ai_gateway_id'] as String?) : const Omittable.absent(),
  aiSearchModel: json['ai_search_model'] != null ? AiSearchUpdateInstancesRequestAiSearchModel.fromJson(json['ai_search_model']) : null,
  cache: json['cache'] as bool?,
  cacheThreshold: json['cache_threshold'] != null ? AiSearchUpdateInstancesRequestCacheThreshold.fromJson(json['cache_threshold'] as String) : null,
  chunk: json['chunk'] as bool?,
  chunkOverlap: json['chunk_overlap'] != null ? (json['chunk_overlap'] as num).toInt() : null,
  chunkSize: json['chunk_size'] != null ? (json['chunk_size'] as num).toInt() : null,
  customMetadata: (json['custom_metadata'] as List<dynamic>?)?.map((e) => AiSearchUpdateInstancesRequestCustomMetadata.fromJson(e as Map<String, dynamic>)).toList(),
  embeddingModel: json['embedding_model'] != null ? AiSearchUpdateInstancesRequestEmbeddingModel.fromJson(json['embedding_model']) : null,
  fusionMethod: json['fusion_method'] != null ? AiSearchUpdateInstancesRequestFusionMethod.fromJson(json['fusion_method'] as String) : null,
  hybridSearchEnabled: json['hybrid_search_enabled'] as bool?,
  maxNumResults: json['max_num_results'] != null ? (json['max_num_results'] as num).toInt() : null,
  metadata: json['metadata'] != null ? AiSearchUpdateInstancesRequestMetadata.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  paused: json['paused'] as bool?,
  publicEndpointParams: json['public_endpoint_params'] != null ? AiSearchUpdateInstancesRequestPublicEndpointParams.fromJson(json['public_endpoint_params'] as Map<String, dynamic>) : null,
  reranking: json['reranking'] as bool?,
  rerankingModel: json['reranking_model'] != null ? AiSearchUpdateInstancesRequestRerankingModel.fromJson(json['reranking_model'] as String) : null,
  retrievalOptions: json.containsKey('retrieval_options') ? Omittable(json['retrieval_options'] != null ? AiSearchUpdateInstancesRequestRetrievalOptions.fromJson(json['retrieval_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  rewriteModel: json['rewrite_model'] != null ? AiSearchUpdateInstancesRequestRewriteModel.fromJson(json['rewrite_model']) : null,
  rewriteQuery: json['rewrite_query'] as bool?,
  scoreThreshold: json['score_threshold'] != null ? (json['score_threshold'] as num).toDouble() : null,
  sourceParams: json.containsKey('source_params') ? Omittable(json['source_params'] != null ? AiSearchUpdateInstancesRequestSourceParams.fromJson(json['source_params'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  summarization: json['summarization'] as bool?,
  summarizationModel: json['summarization_model'] != null ? AiSearchUpdateInstancesRequestSummarizationModel.fromJson(json['summarization_model']) : null,
  systemPromptAiSearch: json.containsKey('system_prompt_ai_search') ? Omittable(json['system_prompt_ai_search'] as String?) : const Omittable.absent(),
  systemPromptIndexSummarization: json.containsKey('system_prompt_index_summarization') ? Omittable(json['system_prompt_index_summarization'] as String?) : const Omittable.absent(),
  systemPromptRewriteQuery: json.containsKey('system_prompt_rewrite_query') ? Omittable(json['system_prompt_rewrite_query'] as String?) : const Omittable.absent(),
  tokenId: json['token_id'] as String?,
); }

final Omittable<String?> aiGatewayId;

final AiSearchUpdateInstancesRequestAiSearchModel? aiSearchModel;

final bool? cache;

final AiSearchUpdateInstancesRequestCacheThreshold? cacheThreshold;

final bool? chunk;

final int? chunkOverlap;

final int? chunkSize;

final List<AiSearchUpdateInstancesRequestCustomMetadata>? customMetadata;

final AiSearchUpdateInstancesRequestEmbeddingModel? embeddingModel;

final AiSearchUpdateInstancesRequestFusionMethod? fusionMethod;

final bool? hybridSearchEnabled;

final int? maxNumResults;

final AiSearchUpdateInstancesRequestMetadata? metadata;

final bool? paused;

final AiSearchUpdateInstancesRequestPublicEndpointParams? publicEndpointParams;

final bool? reranking;

final AiSearchUpdateInstancesRequestRerankingModel? rerankingModel;

final Omittable<AiSearchUpdateInstancesRequestRetrievalOptions?> retrievalOptions;

final AiSearchUpdateInstancesRequestRewriteModel? rewriteModel;

final bool? rewriteQuery;

final double? scoreThreshold;

final Omittable<AiSearchUpdateInstancesRequestSourceParams?> sourceParams;

final bool? summarization;

final AiSearchUpdateInstancesRequestSummarizationModel? summarizationModel;

final Omittable<String?> systemPromptAiSearch;

final Omittable<String?> systemPromptIndexSummarization;

final Omittable<String?> systemPromptRewriteQuery;

final String? tokenId;

/// The value with the schema default applied when absent.
bool get cacheOrDefault { return cache ?? true; } 
/// The value with the schema default applied when absent.
AiSearchUpdateInstancesRequestCacheThreshold get cacheThresholdOrDefault { return cacheThreshold ?? AiSearchUpdateInstancesRequestCacheThreshold.fromJson('close_enough'); } 
/// The value with the schema default applied when absent.
bool get chunkOrDefault { return chunk ?? true; } 
/// The value with the schema default applied when absent.
int get chunkOverlapOrDefault { return chunkOverlap ?? 10; } 
/// The value with the schema default applied when absent.
int get chunkSizeOrDefault { return chunkSize ?? 256; } 
/// The value with the schema default applied when absent.
AiSearchUpdateInstancesRequestFusionMethod get fusionMethodOrDefault { return fusionMethod ?? AiSearchUpdateInstancesRequestFusionMethod.fromJson('rrf'); } 
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
bool get summarizationOrDefault { return summarization ?? false; } 
Map<String, dynamic> toJson() { return {
  if (aiGatewayId.isPresent) 'ai_gateway_id': aiGatewayId.value,
  if (aiSearchModel != null) 'ai_search_model': aiSearchModel?.toJson(),
  'cache': ?cache,
  if (cacheThreshold != null) 'cache_threshold': cacheThreshold?.toJson(),
  'chunk': ?chunk,
  'chunk_overlap': ?chunkOverlap,
  'chunk_size': ?chunkSize,
  if (customMetadata != null) 'custom_metadata': customMetadata?.map((e) => e.toJson()).toList(),
  if (embeddingModel != null) 'embedding_model': embeddingModel?.toJson(),
  if (fusionMethod != null) 'fusion_method': fusionMethod?.toJson(),
  'hybrid_search_enabled': ?hybridSearchEnabled,
  'max_num_results': ?maxNumResults,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'paused': ?paused,
  if (publicEndpointParams != null) 'public_endpoint_params': publicEndpointParams?.toJson(),
  'reranking': ?reranking,
  if (rerankingModel != null) 'reranking_model': rerankingModel?.toJson(),
  if (retrievalOptions.isPresent) 'retrieval_options': retrievalOptions.value?.toJson(),
  if (rewriteModel != null) 'rewrite_model': rewriteModel?.toJson(),
  'rewrite_query': ?rewriteQuery,
  'score_threshold': ?scoreThreshold,
  if (sourceParams.isPresent) 'source_params': sourceParams.value?.toJson(),
  'summarization': ?summarization,
  if (summarizationModel != null) 'summarization_model': summarizationModel?.toJson(),
  if (systemPromptAiSearch.isPresent) 'system_prompt_ai_search': systemPromptAiSearch.value,
  if (systemPromptIndexSummarization.isPresent) 'system_prompt_index_summarization': systemPromptIndexSummarization.value,
  if (systemPromptRewriteQuery.isPresent) 'system_prompt_rewrite_query': systemPromptRewriteQuery.value,
  'token_id': ?tokenId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ai_gateway_id', 'ai_search_model', 'cache', 'cache_threshold', 'chunk', 'chunk_overlap', 'chunk_size', 'custom_metadata', 'embedding_model', 'fusion_method', 'hybrid_search_enabled', 'max_num_results', 'metadata', 'paused', 'public_endpoint_params', 'reranking', 'reranking_model', 'retrieval_options', 'rewrite_model', 'rewrite_query', 'score_threshold', 'source_params', 'summarization', 'summarization_model', 'system_prompt_ai_search', 'system_prompt_index_summarization', 'system_prompt_rewrite_query', 'token_id'}.contains(key)); } 
AiSearchUpdateInstancesRequest copyWith({Omittable<String?>? aiGatewayId, AiSearchUpdateInstancesRequestAiSearchModel? Function()? aiSearchModel, bool? Function()? cache, AiSearchUpdateInstancesRequestCacheThreshold? Function()? cacheThreshold, bool? Function()? chunk, int? Function()? chunkOverlap, int? Function()? chunkSize, List<AiSearchUpdateInstancesRequestCustomMetadata>? Function()? customMetadata, AiSearchUpdateInstancesRequestEmbeddingModel? Function()? embeddingModel, AiSearchUpdateInstancesRequestFusionMethod? Function()? fusionMethod, bool? Function()? hybridSearchEnabled, int? Function()? maxNumResults, AiSearchUpdateInstancesRequestMetadata? Function()? metadata, bool? Function()? paused, AiSearchUpdateInstancesRequestPublicEndpointParams? Function()? publicEndpointParams, bool? Function()? reranking, AiSearchUpdateInstancesRequestRerankingModel? Function()? rerankingModel, Omittable<AiSearchUpdateInstancesRequestRetrievalOptions?>? retrievalOptions, AiSearchUpdateInstancesRequestRewriteModel? Function()? rewriteModel, bool? Function()? rewriteQuery, double? Function()? scoreThreshold, Omittable<AiSearchUpdateInstancesRequestSourceParams?>? sourceParams, bool? Function()? summarization, AiSearchUpdateInstancesRequestSummarizationModel? Function()? summarizationModel, Omittable<String?>? systemPromptAiSearch, Omittable<String?>? systemPromptIndexSummarization, Omittable<String?>? systemPromptRewriteQuery, String? Function()? tokenId, }) { return AiSearchUpdateInstancesRequest(
  aiGatewayId: aiGatewayId ?? this.aiGatewayId,
  aiSearchModel: aiSearchModel != null ? aiSearchModel() : this.aiSearchModel,
  cache: cache != null ? cache() : this.cache,
  cacheThreshold: cacheThreshold != null ? cacheThreshold() : this.cacheThreshold,
  chunk: chunk != null ? chunk() : this.chunk,
  chunkOverlap: chunkOverlap != null ? chunkOverlap() : this.chunkOverlap,
  chunkSize: chunkSize != null ? chunkSize() : this.chunkSize,
  customMetadata: customMetadata != null ? customMetadata() : this.customMetadata,
  embeddingModel: embeddingModel != null ? embeddingModel() : this.embeddingModel,
  fusionMethod: fusionMethod != null ? fusionMethod() : this.fusionMethod,
  hybridSearchEnabled: hybridSearchEnabled != null ? hybridSearchEnabled() : this.hybridSearchEnabled,
  maxNumResults: maxNumResults != null ? maxNumResults() : this.maxNumResults,
  metadata: metadata != null ? metadata() : this.metadata,
  paused: paused != null ? paused() : this.paused,
  publicEndpointParams: publicEndpointParams != null ? publicEndpointParams() : this.publicEndpointParams,
  reranking: reranking != null ? reranking() : this.reranking,
  rerankingModel: rerankingModel != null ? rerankingModel() : this.rerankingModel,
  retrievalOptions: retrievalOptions ?? this.retrievalOptions,
  rewriteModel: rewriteModel != null ? rewriteModel() : this.rewriteModel,
  rewriteQuery: rewriteQuery != null ? rewriteQuery() : this.rewriteQuery,
  scoreThreshold: scoreThreshold != null ? scoreThreshold() : this.scoreThreshold,
  sourceParams: sourceParams ?? this.sourceParams,
  summarization: summarization != null ? summarization() : this.summarization,
  summarizationModel: summarizationModel != null ? summarizationModel() : this.summarizationModel,
  systemPromptAiSearch: systemPromptAiSearch ?? this.systemPromptAiSearch,
  systemPromptIndexSummarization: systemPromptIndexSummarization ?? this.systemPromptIndexSummarization,
  systemPromptRewriteQuery: systemPromptRewriteQuery ?? this.systemPromptRewriteQuery,
  tokenId: tokenId != null ? tokenId() : this.tokenId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesRequest &&
          aiGatewayId == other.aiGatewayId &&
          aiSearchModel == other.aiSearchModel &&
          cache == other.cache &&
          cacheThreshold == other.cacheThreshold &&
          chunk == other.chunk &&
          chunkOverlap == other.chunkOverlap &&
          chunkSize == other.chunkSize &&
          listEquals(customMetadata, other.customMetadata) &&
          embeddingModel == other.embeddingModel &&
          fusionMethod == other.fusionMethod &&
          hybridSearchEnabled == other.hybridSearchEnabled &&
          maxNumResults == other.maxNumResults &&
          metadata == other.metadata &&
          paused == other.paused &&
          publicEndpointParams == other.publicEndpointParams &&
          reranking == other.reranking &&
          rerankingModel == other.rerankingModel &&
          retrievalOptions == other.retrievalOptions &&
          rewriteModel == other.rewriteModel &&
          rewriteQuery == other.rewriteQuery &&
          scoreThreshold == other.scoreThreshold &&
          sourceParams == other.sourceParams &&
          summarization == other.summarization &&
          summarizationModel == other.summarizationModel &&
          systemPromptAiSearch == other.systemPromptAiSearch &&
          systemPromptIndexSummarization == other.systemPromptIndexSummarization &&
          systemPromptRewriteQuery == other.systemPromptRewriteQuery &&
          tokenId == other.tokenId; } 
@override int get hashCode { return Object.hashAll([aiGatewayId, aiSearchModel, cache, cacheThreshold, chunk, chunkOverlap, chunkSize, Object.hashAll(customMetadata ?? const []), embeddingModel, fusionMethod, hybridSearchEnabled, maxNumResults, metadata, paused, publicEndpointParams, reranking, rerankingModel, retrievalOptions, rewriteModel, rewriteQuery, scoreThreshold, sourceParams, summarization, summarizationModel, systemPromptAiSearch, systemPromptIndexSummarization, systemPromptRewriteQuery, tokenId]); } 
@override String toString() { return 'AiSearchUpdateInstancesRequest(aiGatewayId: $aiGatewayId, aiSearchModel: $aiSearchModel, cache: $cache, cacheThreshold: $cacheThreshold, chunk: $chunk, chunkOverlap: $chunkOverlap, chunkSize: $chunkSize, customMetadata: $customMetadata, embeddingModel: $embeddingModel, fusionMethod: $fusionMethod, hybridSearchEnabled: $hybridSearchEnabled, maxNumResults: $maxNumResults, metadata: $metadata, paused: $paused, publicEndpointParams: $publicEndpointParams, reranking: $reranking, rerankingModel: $rerankingModel, retrievalOptions: $retrievalOptions, rewriteModel: $rewriteModel, rewriteQuery: $rewriteQuery, scoreThreshold: $scoreThreshold, sourceParams: $sourceParams, summarization: $summarization, summarizationModel: $summarizationModel, systemPromptAiSearch: $systemPromptAiSearch, systemPromptIndexSummarization: $systemPromptIndexSummarization, systemPromptRewriteQuery: $systemPromptRewriteQuery, tokenId: $tokenId)'; } 
 }
