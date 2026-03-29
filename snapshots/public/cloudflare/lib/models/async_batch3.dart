// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'async_batch3_requests.dart';import 'messages_inner.dart';import 'prompt_inner.dart';final class AsyncBatch3 {const AsyncBatch3({required this.requests});

factory AsyncBatch3.fromJson(Map<String, dynamic> json) { return AsyncBatch3(
  requests: (json['requests'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => PromptInner.fromJson(v as Map<String, dynamic>), fromB: (v) => MessagesInner.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<AsyncBatch3Requests> requests;

Map<String, dynamic> toJson() { return {
  'requests': requests.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requests'); } 
AsyncBatch3 copyWith({List<AsyncBatch3Requests>? requests}) { return AsyncBatch3(
  requests: requests ?? this.requests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AsyncBatch3 &&
          listEquals(requests, other.requests); } 
@override int get hashCode { return Object.hashAll(requests).hashCode; } 
@override String toString() { return 'AsyncBatch3(requests: $requests)'; } 
 }
