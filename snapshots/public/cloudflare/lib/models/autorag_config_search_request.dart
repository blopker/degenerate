// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_search_request_filters.dart';import 'autorag_config_search_request_ranking_options.dart';import 'autorag_config_search_request_reranking.dart';@immutable final class AutoragConfigSearchRequest {const AutoragConfigSearchRequest({required this.query, this.filters, this.maxNumResults, this.rankingOptions, this.reranking, this.rewriteQuery, });

factory AutoragConfigSearchRequest.fromJson(Map<String, dynamic> json) {return AutoragConfigSearchRequest(
  filters: json['filters'] != null ? AutoragConfigSearchRequestFilters.fromJson(json['filters']) : null,
  maxNumResults: json['max_num_results'] != null ? (json['max_num_results'] as num).toInt() : null,
  query: json['query'] as String,
  rankingOptions: json['ranking_options'] != null ? AutoragConfigSearchRequestRankingOptions.fromJson(json['ranking_options'] as Map<String, dynamic>) : null,
  reranking: json['reranking'] != null ? AutoragConfigSearchRequestReranking.fromJson(json['reranking'] as Map<String, dynamic>) : null,
  rewriteQuery: json['rewrite_query'] as bool?,
);}

final AutoragConfigSearchRequestFilters? filters;

final int? maxNumResults;

final String query;

final AutoragConfigSearchRequestRankingOptions? rankingOptions;

final AutoragConfigSearchRequestReranking? reranking;

final bool? rewriteQuery;

/// The value with the schema default applied when absent.
int get maxNumResultsOrDefault {return maxNumResults ?? 10;}
/// The value with the schema default applied when absent.
bool get rewriteQueryOrDefault {return rewriteQuery ?? false;}
Map<String, dynamic> toJson() {return {
  if (filters != null) 'filters': filters?.toJson(),
  'max_num_results': ?maxNumResults,
  'query': query,
  if (rankingOptions != null) 'ranking_options': rankingOptions?.toJson(),
  if (reranking != null) 'reranking': reranking?.toJson(),
  'rewrite_query': ?rewriteQuery,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('query') && json['query'] is String;}
AutoragConfigSearchRequest copyWith({AutoragConfigSearchRequestFilters? Function()? filters, int? Function()? maxNumResults, String? query, AutoragConfigSearchRequestRankingOptions? Function()? rankingOptions, AutoragConfigSearchRequestReranking? Function()? reranking, bool? Function()? rewriteQuery, }) {return AutoragConfigSearchRequest(
  filters: filters != null ? filters() : this.filters,
  maxNumResults: maxNumResults != null ? maxNumResults() : this.maxNumResults,
  query: query ?? this.query,
  rankingOptions: rankingOptions != null ? rankingOptions() : this.rankingOptions,
  reranking: reranking != null ? reranking() : this.reranking,
  rewriteQuery: rewriteQuery != null ? rewriteQuery() : this.rewriteQuery,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AutoragConfigSearchRequest &&
          filters == other.filters &&
          maxNumResults == other.maxNumResults &&
          query == other.query &&
          rankingOptions == other.rankingOptions &&
          reranking == other.reranking &&
          rewriteQuery == other.rewriteQuery;}
@override int get hashCode {return Object.hash(filters, maxNumResults, query, rankingOptions, reranking, rewriteQuery);}
@override String toString() {return 'AutoragConfigSearchRequest(filters: $filters, maxNumResults: $maxNumResults, query: $query, rankingOptions: $rankingOptions, reranking: $reranking, rewriteQuery: $rewriteQuery)';}
}
