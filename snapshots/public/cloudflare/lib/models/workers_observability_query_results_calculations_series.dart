// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_observability_query_results_calculations_series_data.dart';final class WorkersObservabilityQueryResultsCalculationsSeries {const WorkersObservabilityQueryResultsCalculationsSeries({required this.data, required this.time, });

factory WorkersObservabilityQueryResultsCalculationsSeries.fromJson(Map<String, dynamic> json) { return WorkersObservabilityQueryResultsCalculationsSeries(
  data: (json['data'] as List<dynamic>).map((e) => WorkersObservabilityQueryResultsCalculationsSeriesData.fromJson(e as Map<String, dynamic>)).toList(),
  time: json['time'] as String,
); }

final List<WorkersObservabilityQueryResultsCalculationsSeriesData> data;

final String time;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'time': time,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('time') && json['time'] is String; } 
WorkersObservabilityQueryResultsCalculationsSeries copyWith({List<WorkersObservabilityQueryResultsCalculationsSeriesData>? data, String? time, }) { return WorkersObservabilityQueryResultsCalculationsSeries(
  data: data ?? this.data,
  time: time ?? this.time,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityQueryResultsCalculationsSeries &&
          listEquals(data, other.data) &&
          time == other.time; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), time); } 
@override String toString() { return 'WorkersObservabilityQueryResultsCalculationsSeries(data: $data, time: $time)'; } 
 }
