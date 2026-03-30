// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_raw_result_response_results_rows.dart';final class D1RawResultResponseResults {const D1RawResultResponseResults({this.columns, this.rows, });

factory D1RawResultResponseResults.fromJson(Map<String, dynamic> json) { return D1RawResultResponseResults(
  columns: (json['columns'] as List<dynamic>?)?.map((e) => e as String).toList(),
  rows: (json['rows'] as List<dynamic>?)?.map((e) => (e as List<dynamic>).map((e) => OneOf3.parse(e, fromA: (v) => (v as num).toDouble(), fromB: (v) => v as String, fromC: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),)).toList()).toList(),
); }

final List<String>? columns;

final List<List<D1RawResultResponseResultsRows>>? rows;

Map<String, dynamic> toJson() { return {
  'columns': ?columns,
  if (rows != null) 'rows': rows?.map((e) => e.map((e) => e.toJson()).toList()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'columns', 'rows'}.contains(key)); } 
D1RawResultResponseResults copyWith({List<String> Function()? columns, List<List<D1RawResultResponseResultsRows>> Function()? rows, }) { return D1RawResultResponseResults(
  columns: columns != null ? columns() : this.columns,
  rows: rows != null ? rows() : this.rows,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1RawResultResponseResults &&
          listEquals(columns, other.columns) &&
          listEquals(rows, other.rows); } 
@override int get hashCode { return Object.hash(Object.hashAll(columns ?? const []), Object.hashAll(rows ?? const [])); } 
@override String toString() { return 'D1RawResultResponseResults(columns: $columns, rows: $rows)'; } 
 }
