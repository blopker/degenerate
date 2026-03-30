// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_query_meta.dart';final class D1QueryResultResponse {const D1QueryResultResponse({this.meta, this.results, this.success, });

factory D1QueryResultResponse.fromJson(Map<String, dynamic> json) { return D1QueryResultResponse(
  meta: json['meta'] != null ? D1QueryMeta.fromJson(json['meta'] as Map<String, dynamic>) : null,
  results: (json['results'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  success: json['success'] as bool?,
); }

final D1QueryMeta? meta;

final List<Map<String,dynamic>>? results;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (meta != null) 'meta': meta?.toJson(),
  if (results != null) 'results': results?.map((e) => e).toList(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'meta', 'results', 'success'}.contains(key)); } 
D1QueryResultResponse copyWith({D1QueryMeta Function()? meta, List<Map<String, dynamic>> Function()? results, bool Function()? success, }) { return D1QueryResultResponse(
  meta: meta != null ? meta() : this.meta,
  results: results != null ? results() : this.results,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1QueryResultResponse &&
          meta == other.meta &&
          listEquals(results, other.results) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(results ?? const []), success); } 
@override String toString() { return 'D1QueryResultResponse(meta: $meta, results: $results, success: $success)'; } 
 }
