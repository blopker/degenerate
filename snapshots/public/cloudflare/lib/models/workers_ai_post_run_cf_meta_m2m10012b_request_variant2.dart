// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_run_cf_meta_m2m10012b_request_variant2_requests.dart';final class WorkersAiPostRunCfMetaM2m10012bRequestVariant2 {const WorkersAiPostRunCfMetaM2m10012bRequestVariant2({required this.requests});

factory WorkersAiPostRunCfMetaM2m10012bRequestVariant2.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfMetaM2m10012bRequestVariant2(
  requests: (json['requests'] as List<dynamic>).map((e) => WorkersAiPostRunCfMetaM2m10012bRequestVariant2Requests.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Batch of the embeddings requests to run using async-queue
final List<WorkersAiPostRunCfMetaM2m10012bRequestVariant2Requests> requests;

Map<String, dynamic> toJson() { return {
  'requests': requests.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requests'); } 
WorkersAiPostRunCfMetaM2m10012bRequestVariant2 copyWith({List<WorkersAiPostRunCfMetaM2m10012bRequestVariant2Requests>? requests}) { return WorkersAiPostRunCfMetaM2m10012bRequestVariant2(
  requests: requests ?? this.requests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfMetaM2m10012bRequestVariant2 &&
          listEquals(requests, other.requests); } 
@override int get hashCode { return Object.hashAll(requests).hashCode; } 
@override String toString() { return 'WorkersAiPostRunCfMetaM2m10012bRequestVariant2(requests: $requests)'; } 
 }
