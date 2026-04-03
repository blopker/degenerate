// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class QueryMatch {const QueryMatch({this.matches, this.total, });

factory QueryMatch.fromJson(Map<String, dynamic> json) { return QueryMatch(
  matches: (json['matches'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList(),
  total: json['total'] != null ? (json['total'] as num).toInt() : null,
); }

final List<Map<String,dynamic>>? matches;

final int? total;

Map<String, dynamic> toJson() { return {
  if (matches != null) 'matches': matches?.map((e) => e).toList(),
  'total': ?total,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'matches', 'total'}.contains(key)); } 
QueryMatch copyWith({List<Map<String, dynamic>> Function()? matches, int Function()? total, }) { return QueryMatch(
  matches: matches != null ? matches() : this.matches,
  total: total != null ? total() : this.total,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QueryMatch &&
          listEquals(matches, other.matches) &&
          total == other.total; } 
@override int get hashCode { return Object.hash(Object.hashAll(matches ?? const []), total); } 
@override String toString() { return 'QueryMatch(matches: $matches, total: $total)'; } 
 }
