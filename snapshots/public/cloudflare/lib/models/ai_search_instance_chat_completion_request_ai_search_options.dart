// GENERATED CODE - DO NOT MODIFY BY HAND

import 'ai_search_instance_chat_completion_request_ai_search_options_query_rewrite.dart';import 'ai_search_instance_chat_completion_request_ai_search_options_reranking.dart';import 'ai_search_instance_chat_completion_request_ai_search_options_retrieval.dart';final class AiSearchInstanceChatCompletionRequestAiSearchOptions {const AiSearchInstanceChatCompletionRequestAiSearchOptions({this.queryRewrite, this.reranking, this.retrieval, });

factory AiSearchInstanceChatCompletionRequestAiSearchOptions.fromJson(Map<String, dynamic> json) { return AiSearchInstanceChatCompletionRequestAiSearchOptions(
  queryRewrite: json['query_rewrite'] != null ? AiSearchInstanceChatCompletionRequestAiSearchOptionsQueryRewrite.fromJson(json['query_rewrite'] as Map<String, dynamic>) : null,
  reranking: json['reranking'] != null ? AiSearchInstanceChatCompletionRequestAiSearchOptionsReranking.fromJson(json['reranking'] as Map<String, dynamic>) : null,
  retrieval: json['retrieval'] != null ? AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrieval.fromJson(json['retrieval'] as Map<String, dynamic>) : null,
); }

final AiSearchInstanceChatCompletionRequestAiSearchOptionsQueryRewrite? queryRewrite;

final AiSearchInstanceChatCompletionRequestAiSearchOptionsReranking? reranking;

final AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrieval? retrieval;

Map<String, dynamic> toJson() { return {
  if (queryRewrite != null) 'query_rewrite': queryRewrite?.toJson(),
  if (reranking != null) 'reranking': reranking?.toJson(),
  if (retrieval != null) 'retrieval': retrieval?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AiSearchInstanceChatCompletionRequestAiSearchOptions copyWith({AiSearchInstanceChatCompletionRequestAiSearchOptionsQueryRewrite Function()? queryRewrite, AiSearchInstanceChatCompletionRequestAiSearchOptionsReranking Function()? reranking, AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrieval Function()? retrieval, }) { return AiSearchInstanceChatCompletionRequestAiSearchOptions(
  queryRewrite: queryRewrite != null ? queryRewrite() : this.queryRewrite,
  reranking: reranking != null ? reranking() : this.reranking,
  retrieval: retrieval != null ? retrieval() : this.retrieval,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceChatCompletionRequestAiSearchOptions &&
          queryRewrite == other.queryRewrite &&
          reranking == other.reranking &&
          retrieval == other.retrieval; } 
@override int get hashCode { return Object.hash(queryRewrite, reranking, retrieval); } 
@override String toString() { return 'AiSearchInstanceChatCompletionRequestAiSearchOptions(queryRewrite: $queryRewrite, reranking: $reranking, retrieval: $retrieval)'; } 
 }
