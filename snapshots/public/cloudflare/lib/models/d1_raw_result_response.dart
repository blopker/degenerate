// GENERATED CODE - DO NOT MODIFY BY HAND

import 'd1_query_meta.dart';import 'd1_raw_result_response_results.dart';final class D1RawResultResponse {const D1RawResultResponse({this.meta, this.results, this.success, });

factory D1RawResultResponse.fromJson(Map<String, dynamic> json) { return D1RawResultResponse(
  meta: json['meta'] != null ? D1QueryMeta.fromJson(json['meta'] as Map<String, dynamic>) : null,
  results: json['results'] != null ? D1RawResultResponseResults.fromJson(json['results'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final D1QueryMeta? meta;

final D1RawResultResponseResults? results;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (meta != null) 'meta': meta?.toJson(),
  if (results != null) 'results': results?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'meta', 'results', 'success'}.contains(key)); } 
D1RawResultResponse copyWith({D1QueryMeta Function()? meta, D1RawResultResponseResults Function()? results, bool Function()? success, }) { return D1RawResultResponse(
  meta: meta != null ? meta() : this.meta,
  results: results != null ? results() : this.results,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1RawResultResponse &&
          meta == other.meta &&
          results == other.results &&
          success == other.success; } 
@override int get hashCode { return Object.hash(meta, results, success); } 
@override String toString() { return 'D1RawResultResponse(meta: $meta, results: $results, success: $success)'; } 
 }
