// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'n5_request6_variant2_requests.dart';final class $5Request6Variant2 {const $5Request6Variant2({required this.requests});

factory $5Request6Variant2.fromJson(Map<String, dynamic> json) { return $5Request6Variant2(
  requests: (json['requests'] as List<dynamic>).map((e) => $5Request6Variant2Requests.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Batch of the embeddings requests to run using async-queue
final List<$5Request6Variant2Requests> requests;

Map<String, dynamic> toJson() { return {
  'requests': requests.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requests'); } 
$5Request6Variant2 copyWith({List<$5Request6Variant2Requests>? requests}) { return $5Request6Variant2(
  requests: requests ?? this.requests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is $5Request6Variant2 &&
          listEquals(requests, other.requests); } 
@override int get hashCode { return Object.hashAll(requests).hashCode; } 
@override String toString() { return '\$5Request6Variant2(requests: $requests)'; } 
 }
