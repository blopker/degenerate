// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'responses_async_requests.dart';@immutable final class ResponsesAsync {const ResponsesAsync({required this.requests});

factory ResponsesAsync.fromJson(Map<String, dynamic> json) { return ResponsesAsync(
  requests: (json['requests'] as List<dynamic>).map((e) => ResponsesAsyncRequests.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ResponsesAsyncRequests> requests;

Map<String, dynamic> toJson() { return {
  'requests': requests.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requests'); } 
ResponsesAsync copyWith({List<ResponsesAsyncRequests>? requests}) { return ResponsesAsync(
  requests: requests ?? this.requests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponsesAsync &&
          listEquals(requests, other.requests); } 
@override int get hashCode { return Object.hashAll(requests).hashCode; } 
@override String toString() { return 'ResponsesAsync(requests: $requests)'; } 
 }
