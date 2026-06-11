// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_query_meta.dart';/// Only present when status = 'complete'
@immutable final class D1ImportDatabaseResponseResultResult {const D1ImportDatabaseResponseResultResult({this.finalBookmark, this.meta, this.numQueries, });

factory D1ImportDatabaseResponseResultResult.fromJson(Map<String, dynamic> json) { return D1ImportDatabaseResponseResultResult(
  finalBookmark: json['final_bookmark'] as String?,
  meta: json['meta'] != null ? D1QueryMeta.fromJson(json['meta'] as Map<String, dynamic>) : null,
  numQueries: json['num_queries'] != null ? (json['num_queries'] as num).toDouble() : null,
); }

/// The time-travel bookmark if you need restore your D1 to directly after the import succeeded.
final String? finalBookmark;

final D1QueryMeta? meta;

/// The total number of queries that were executed during the import.
final double? numQueries;

Map<String, dynamic> toJson() { return {
  'final_bookmark': ?finalBookmark,
  if (meta != null) 'meta': meta?.toJson(),
  'num_queries': ?numQueries,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'final_bookmark', 'meta', 'num_queries'}.contains(key)); } 
D1ImportDatabaseResponseResultResult copyWith({String Function()? finalBookmark, D1QueryMeta Function()? meta, double Function()? numQueries, }) { return D1ImportDatabaseResponseResultResult(
  finalBookmark: finalBookmark != null ? finalBookmark() : this.finalBookmark,
  meta: meta != null ? meta() : this.meta,
  numQueries: numQueries != null ? numQueries() : this.numQueries,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1ImportDatabaseResponseResultResult &&
          finalBookmark == other.finalBookmark &&
          meta == other.meta &&
          numQueries == other.numQueries; } 
@override int get hashCode { return Object.hash(finalBookmark, meta, numQueries); } 
@override String toString() { return 'D1ImportDatabaseResponseResultResult(finalBookmark: $finalBookmark, meta: $meta, numQueries: $numQueries)'; } 
 }
