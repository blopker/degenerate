// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DnsAnalyticsReportBytimeData {const DnsAnalyticsReportBytimeData({required this.metrics});

factory DnsAnalyticsReportBytimeData.fromJson(Map<String, dynamic> json) { return DnsAnalyticsReportBytimeData(
  metrics: (json['metrics'] as List<dynamic>).map((e) => (e as List<dynamic>).map((e) => (e as num).toDouble()).toList()).toList(),
); }

/// Array with one item per requested metric. Each item is an array of values, broken down by time interval.
final List<List<double>> metrics;

Map<String, dynamic> toJson() { return {
  'metrics': metrics.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('metrics'); } 
DnsAnalyticsReportBytimeData copyWith({List<List<double>>? metrics}) { return DnsAnalyticsReportBytimeData(
  metrics: metrics ?? this.metrics,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsAnalyticsReportBytimeData &&
          listEquals(metrics, other.metrics); } 
@override int get hashCode { return Object.hashAll(metrics).hashCode; } 
@override String toString() { return 'DnsAnalyticsReportBytimeData(metrics: $metrics)'; } 
 }
