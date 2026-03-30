// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_analytics_report_bytime_data.dart';import 'dns_analytics_report_bytime_query.dart';final class DnsAnalyticsReportBytime {const DnsAnalyticsReportBytime({required this.data, required this.dataLag, required this.max, required this.min, required this.query, required this.rows, required this.totals, required this.timeIntervals, });

factory DnsAnalyticsReportBytime.fromJson(Map<String, dynamic> json) { return DnsAnalyticsReportBytime(
  data: (json['data'] as List<dynamic>).map((e) => DnsAnalyticsReportBytimeData.fromJson(e as Map<String, dynamic>)).toList(),
  dataLag: (json['data_lag'] as num).toDouble(),
  max: (json['max'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  min: (json['min'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  query: DnsAnalyticsReportBytimeQuery.fromJson(json['query'] as Map<String, dynamic>),
  rows: (json['rows'] as num).toDouble(),
  totals: (json['totals'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  timeIntervals: (json['time_intervals'] as List<dynamic>).map((e) => (e as List<dynamic>).map((e) => DateTime.parse(e as String)).toList()).toList(),
); }

final List<DnsAnalyticsReportBytimeData> data;

/// Number of seconds between current time and last processed event, in another words how many seconds of data could be missing.
final double dataLag;

/// Maximum results for each metric (object mapping metric names to values). Currently always an empty object.
final Map<String,dynamic> max;

/// Minimum results for each metric (object mapping metric names to values). Currently always an empty object.
final Map<String,dynamic> min;

final DnsAnalyticsReportBytimeQuery query;

/// Total number of rows in the result.
final double rows;

/// Total results for metrics across all data (object mapping metric names to values).
final Map<String,dynamic> totals;

/// Array of time intervals in the response data. Each interval is represented as an array containing two values: the start time, and the end time.
/// 
final List<List<DateTime>> timeIntervals;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'data_lag': dataLag,
  'max': max,
  'min': min,
  'query': query.toJson(),
  'rows': rows,
  'totals': totals,
  'time_intervals': timeIntervals.map((e) => e.map((e) => e.toIso8601String()).toList()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('data_lag') && json['data_lag'] is num &&
      json.containsKey('max') &&
      json.containsKey('min') &&
      json.containsKey('query') &&
      json.containsKey('rows') && json['rows'] is num &&
      json.containsKey('totals') &&
      json.containsKey('time_intervals'); } 
DnsAnalyticsReportBytime copyWith({List<DnsAnalyticsReportBytimeData>? data, double? dataLag, Map<String,dynamic>? max, Map<String,dynamic>? min, DnsAnalyticsReportBytimeQuery? query, double? rows, Map<String,dynamic>? totals, List<List<DateTime>>? timeIntervals, }) { return DnsAnalyticsReportBytime(
  data: data ?? this.data,
  dataLag: dataLag ?? this.dataLag,
  max: max ?? this.max,
  min: min ?? this.min,
  query: query ?? this.query,
  rows: rows ?? this.rows,
  totals: totals ?? this.totals,
  timeIntervals: timeIntervals ?? this.timeIntervals,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsAnalyticsReportBytime &&
          listEquals(data, other.data) &&
          dataLag == other.dataLag &&
          max == other.max &&
          min == other.min &&
          query == other.query &&
          rows == other.rows &&
          totals == other.totals &&
          listEquals(timeIntervals, other.timeIntervals); } 
@override int get hashCode { return Object.hash(Object.hashAll(data), dataLag, max, min, query, rows, totals, Object.hashAll(timeIntervals)); } 
@override String toString() { return 'DnsAnalyticsReportBytime(data: $data, dataLag: $dataLag, max: $max, min: $min, query: $query, rows: $rows, totals: $totals, timeIntervals: $timeIntervals)'; } 
 }
