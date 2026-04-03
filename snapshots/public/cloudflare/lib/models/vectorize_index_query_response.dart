// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_index_query_response_matches.dart';@immutable final class VectorizeIndexQueryResponse {const VectorizeIndexQueryResponse({this.count, this.matches, });

factory VectorizeIndexQueryResponse.fromJson(Map<String, dynamic> json) { return VectorizeIndexQueryResponse(
  count: json['count'] != null ? (json['count'] as num).toInt() : null,
  matches: (json['matches'] as List<dynamic>?)?.map((e) => VectorizeIndexQueryResponseMatches.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Specifies the count of vectors returned by the search
final int? count;

/// Array of vectors matched by the search
final List<VectorizeIndexQueryResponseMatches>? matches;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  if (matches != null) 'matches': matches?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'matches'}.contains(key)); } 
VectorizeIndexQueryResponse copyWith({int Function()? count, List<VectorizeIndexQueryResponseMatches> Function()? matches, }) { return VectorizeIndexQueryResponse(
  count: count != null ? count() : this.count,
  matches: matches != null ? matches() : this.matches,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexQueryResponse &&
          count == other.count &&
          listEquals(matches, other.matches); } 
@override int get hashCode { return Object.hash(count, Object.hashAll(matches ?? const [])); } 
@override String toString() { return 'VectorizeIndexQueryResponse(count: $count, matches: $matches)'; } 
 }
