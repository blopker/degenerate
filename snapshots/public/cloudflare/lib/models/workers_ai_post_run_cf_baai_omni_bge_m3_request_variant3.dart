// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'input_embedding4.dart';import 'input_query_and_contexts4.dart';import 'workers_ai_post_run_cf_baai_omni_bge_m3_request_variant3_requests.dart';@immutable final class WorkersAiPostRunCfBaaiOmniBgeM3RequestVariant3 {const WorkersAiPostRunCfBaaiOmniBgeM3RequestVariant3({required this.requests});

factory WorkersAiPostRunCfBaaiOmniBgeM3RequestVariant3.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfBaaiOmniBgeM3RequestVariant3(
  requests: (json['requests'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => InputQueryAndContexts4.fromJson(v as Map<String, dynamic>), fromB: (v) => InputEmbedding4.fromJson(v as Map<String, dynamic>),)).toList(),
); }

/// Batch of the embeddings requests to run using async-queue
final List<WorkersAiPostRunCfBaaiOmniBgeM3RequestVariant3Requests> requests;

Map<String, dynamic> toJson() { return {
  'requests': requests.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requests'); } 
WorkersAiPostRunCfBaaiOmniBgeM3RequestVariant3 copyWith({List<WorkersAiPostRunCfBaaiOmniBgeM3RequestVariant3Requests>? requests}) { return WorkersAiPostRunCfBaaiOmniBgeM3RequestVariant3(
  requests: requests ?? this.requests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfBaaiOmniBgeM3RequestVariant3 &&
          listEquals(requests, other.requests); } 
@override int get hashCode { return Object.hashAll(requests).hashCode; } 
@override String toString() { return 'WorkersAiPostRunCfBaaiOmniBgeM3RequestVariant3(requests: $requests)'; } 
 }
