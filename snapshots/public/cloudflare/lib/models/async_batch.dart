// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'async_batch_requests.dart';import 'messages7.dart';import 'prompt2.dart';final class AsyncBatch {const AsyncBatch({required this.requests});

factory AsyncBatch.fromJson(Map<String, dynamic> json) { return AsyncBatch(
  requests: (json['requests'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => Prompt2.fromJson(v as Map<String, dynamic>), fromB: (v) => Messages7.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<AsyncBatchRequests> requests;

Map<String, dynamic> toJson() { return {
  'requests': requests.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requests'); } 
AsyncBatch copyWith({List<AsyncBatchRequests>? requests}) { return AsyncBatch(
  requests: requests ?? this.requests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AsyncBatch &&
          listEquals(requests, other.requests); } 
@override int get hashCode { return Object.hashAll(requests).hashCode; } 
@override String toString() { return 'AsyncBatch(requests: $requests)'; } 
 }
