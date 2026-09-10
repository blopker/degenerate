// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_ai_search_request_filters.dart';import 'autorag_config_ai_search_request_model.dart';import 'autorag_config_ai_search_request_ranking_options.dart';import 'autorag_config_ai_search_request_reranking.dart';@immutable final class AutoragConfigAiSearchRequest {const AutoragConfigAiSearchRequest({required this.query, this.filters, this.maxNumResults, this.model, this.rankingOptions, this.reranking, this.rewriteQuery, this.stream, this.systemPrompt, });

factory AutoragConfigAiSearchRequest.fromJson(Map<String, dynamic> json) { return AutoragConfigAiSearchRequest(
  filters: json['filters'] != null ? AutoragConfigAiSearchRequestFilters.fromJson(json['filters']) : null,
  maxNumResults: json['max_num_results'] != null ? (json['max_num_results'] as num).toInt() : null,
  model: json['model'] != null ? AutoragConfigAiSearchRequestModel.fromJson(json['model']) : null,
  query: json['query'] as String,
  rankingOptions: json['ranking_options'] != null ? AutoragConfigAiSearchRequestRankingOptions.fromJson(json['ranking_options'] as Map<String, dynamic>) : null,
  reranking: json['reranking'] != null ? AutoragConfigAiSearchRequestReranking.fromJson(json['reranking'] as Map<String, dynamic>) : null,
  rewriteQuery: json['rewrite_query'] as bool?,
  stream: json['stream'] as bool?,
  systemPrompt: json['system_prompt'] as String?,
); }

final AutoragConfigAiSearchRequestFilters? filters;

final int? maxNumResults;

final AutoragConfigAiSearchRequestModel? model;

final String query;

final AutoragConfigAiSearchRequestRankingOptions? rankingOptions;

final AutoragConfigAiSearchRequestReranking? reranking;

final bool? rewriteQuery;

final bool? stream;

final String? systemPrompt;

/// The value with the schema default applied when absent.
int get maxNumResultsOrDefault { return maxNumResults ?? 10; } 
/// The value with the schema default applied when absent.
bool get rewriteQueryOrDefault { return rewriteQuery ?? false; } 
/// The value with the schema default applied when absent.
bool get streamOrDefault { return stream ?? false; } 
Map<String, dynamic> toJson() { return {
  if (filters != null) 'filters': filters?.toJson(),
  'max_num_results': ?maxNumResults,
  if (model != null) 'model': model?.toJson(),
  'query': query,
  if (rankingOptions != null) 'ranking_options': rankingOptions?.toJson(),
  if (reranking != null) 'reranking': reranking?.toJson(),
  'rewrite_query': ?rewriteQuery,
  'stream': ?stream,
  'system_prompt': ?systemPrompt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('query') && json['query'] is String; } 
AutoragConfigAiSearchRequest copyWith({AutoragConfigAiSearchRequestFilters? Function()? filters, int? Function()? maxNumResults, AutoragConfigAiSearchRequestModel? Function()? model, String? query, AutoragConfigAiSearchRequestRankingOptions? Function()? rankingOptions, AutoragConfigAiSearchRequestReranking? Function()? reranking, bool? Function()? rewriteQuery, bool? Function()? stream, String? Function()? systemPrompt, }) { return AutoragConfigAiSearchRequest(
  filters: filters != null ? filters() : this.filters,
  maxNumResults: maxNumResults != null ? maxNumResults() : this.maxNumResults,
  model: model != null ? model() : this.model,
  query: query ?? this.query,
  rankingOptions: rankingOptions != null ? rankingOptions() : this.rankingOptions,
  reranking: reranking != null ? reranking() : this.reranking,
  rewriteQuery: rewriteQuery != null ? rewriteQuery() : this.rewriteQuery,
  stream: stream != null ? stream() : this.stream,
  systemPrompt: systemPrompt != null ? systemPrompt() : this.systemPrompt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigAiSearchRequest &&
          filters == other.filters &&
          maxNumResults == other.maxNumResults &&
          model == other.model &&
          query == other.query &&
          rankingOptions == other.rankingOptions &&
          reranking == other.reranking &&
          rewriteQuery == other.rewriteQuery &&
          stream == other.stream &&
          systemPrompt == other.systemPrompt; } 
@override int get hashCode { return Object.hash(filters, maxNumResults, model, query, rankingOptions, reranking, rewriteQuery, stream, systemPrompt); } 
@override String toString() { return 'AutoragConfigAiSearchRequest(filters: $filters, maxNumResults: $maxNumResults, model: $model, query: $query, rankingOptions: $rankingOptions, reranking: $reranking, rewriteQuery: $rewriteQuery, stream: $stream, systemPrompt: $systemPrompt)'; } 
 }
