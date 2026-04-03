// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response5_matches.dart';@immutable final class Response5 {const Response5({this.count, this.matches, });

factory Response5.fromJson(Map<String, dynamic> json) { return Response5(
  count: json['count'] != null ? (json['count'] as num).toInt() : null,
  matches: (json['matches'] as List<dynamic>?)?.map((e) => Response5Matches.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Specifies the count of vectors returned by the search
final int? count;

/// Array of vectors matched by the search
final List<Response5Matches>? matches;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  if (matches != null) 'matches': matches?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'matches'}.contains(key)); } 
Response5 copyWith({int Function()? count, List<Response5Matches> Function()? matches, }) { return Response5(
  count: count != null ? count() : this.count,
  matches: matches != null ? matches() : this.matches,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Response5 &&
          count == other.count &&
          listEquals(matches, other.matches); } 
@override int get hashCode { return Object.hash(count, Object.hashAll(matches ?? const [])); } 
@override String toString() { return 'Response5(count: $count, matches: $matches)'; } 
 }
