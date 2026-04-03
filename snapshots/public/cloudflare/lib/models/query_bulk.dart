// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class QueryBulk {const QueryBulk({this.queries});

factory QueryBulk.fromJson(Map<String, dynamic> json) { return QueryBulk(
  queries: (json['queries'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
); }

final List<Map<String,dynamic>>? queries;

Map<String, dynamic> toJson() { return {
  if (queries != null) 'queries': queries?.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'queries'}.contains(key)); } 
QueryBulk copyWith({List<Map<String, dynamic>> Function()? queries}) { return QueryBulk(
  queries: queries != null ? queries() : this.queries,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QueryBulk &&
          listEquals(queries, other.queries); } 
@override int get hashCode { return Object.hashAll(queries ?? const []).hashCode; } 
@override String toString() { return 'QueryBulk(queries: $queries)'; } 
 }
