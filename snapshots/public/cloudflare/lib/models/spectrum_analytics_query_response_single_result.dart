// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_analytics_column.dart';import 'spectrum_analytics_query.dart';import 'spectrum_analytics_timestamp.dart';@immutable final class SpectrumAnalyticsQueryResponseSingleResult {const SpectrumAnalyticsQueryResponseSingleResult({required this.data, required this.dataLag, required this.max, required this.min, required this.query, required this.rows, required this.totals, this.timeIntervals, });

factory SpectrumAnalyticsQueryResponseSingleResult.fromJson(Map<String, dynamic> json) { return SpectrumAnalyticsQueryResponseSingleResult(
  data: (json['data'] as List<dynamic>).map((e) => SpectrumAnalyticsColumn.fromJson(e as Map<String, dynamic>)).toList(),
  dataLag: (json['data_lag'] as num).toDouble(),
  max: (json['max'] as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as num).toDouble())),
  min: (json['min'] as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as num).toDouble())),
  query: SpectrumAnalyticsQuery.fromJson(json['query'] as Map<String, dynamic>),
  rows: (json['rows'] as num).toDouble(),
  timeIntervals: (json['time_intervals'] as List<dynamic>?)?.map((e) => (e as List<dynamic>).map((e) => SpectrumAnalyticsTimestamp.fromJson(e as String)).toList()).toList(),
  totals: (json['totals'] as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as num).toDouble())),
); }

/// List of columns returned by the analytics query.
final List<SpectrumAnalyticsColumn> data;

/// Number of seconds between current time and last processed event, i.e. how many seconds of data could be missing.
final double dataLag;

/// Maximum result for each selected metrics across all data.
final Map<String,double> max;

/// Minimum result for each selected metrics across all data.
final Map<String,double> min;

final SpectrumAnalyticsQuery query;

/// Total number of rows in the result.
final double rows;

/// List of time interval buckets: `[start, end]`
final List<List<SpectrumAnalyticsTimestamp>>? timeIntervals;

/// Total result for each selected metrics across all data.
final Map<String,double> totals;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'data_lag': dataLag,
  'max': max,
  'min': min,
  'query': query.toJson(),
  'rows': rows,
  if (timeIntervals != null) 'time_intervals': timeIntervals?.map((e) => e.map((e) => e.toJson()).toList()).toList(),
  'totals': totals,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('data_lag') && json['data_lag'] is num &&
      json.containsKey('max') &&
      json.containsKey('min') &&
      json.containsKey('query') &&
      json.containsKey('rows') && json['rows'] is num &&
      json.containsKey('totals'); } 
SpectrumAnalyticsQueryResponseSingleResult copyWith({List<SpectrumAnalyticsColumn>? data, double? dataLag, Map<String,double>? max, Map<String,double>? min, SpectrumAnalyticsQuery? query, double? rows, List<List<SpectrumAnalyticsTimestamp>> Function()? timeIntervals, Map<String,double>? totals, }) { return SpectrumAnalyticsQueryResponseSingleResult(
  data: data ?? this.data,
  dataLag: dataLag ?? this.dataLag,
  max: max ?? this.max,
  min: min ?? this.min,
  query: query ?? this.query,
  rows: rows ?? this.rows,
  timeIntervals: timeIntervals != null ? timeIntervals() : this.timeIntervals,
  totals: totals ?? this.totals,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumAnalyticsQueryResponseSingleResult &&
          listEquals(data, other.data) &&
          dataLag == other.dataLag &&
          max == other.max &&
          min == other.min &&
          query == other.query &&
          rows == other.rows &&
          listEquals(timeIntervals, other.timeIntervals) &&
          totals == other.totals; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), dataLag, max, min, query, rows, Object.hashAll(timeIntervals ?? const []), totals); } 
@override String toString() { return 'SpectrumAnalyticsQueryResponseSingleResult(data: $data, dataLag: $dataLag, max: $max, min: $min, query: $query, rows: $rows, timeIntervals: $timeIntervals, totals: $totals)'; } 
 }
