// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_observability_query_results_compare_aggregates.dart';import 'workers_observability_query_results_compare_series.dart';final class WorkersObservabilityQueryResultsCompare {const WorkersObservabilityQueryResultsCompare({required this.aggregates, this.alias, required this.calculation, required this.series, });

factory WorkersObservabilityQueryResultsCompare.fromJson(Map<String, dynamic> json) { return WorkersObservabilityQueryResultsCompare(
  aggregates: (json['aggregates'] as List<dynamic>).map((e) => WorkersObservabilityQueryResultsCompareAggregates.fromJson(e as Map<String, dynamic>)).toList(),
  alias: json['alias'] as String?,
  calculation: json['calculation'] as String,
  series: (json['series'] as List<dynamic>).map((e) => WorkersObservabilityQueryResultsCompareSeries.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersObservabilityQueryResultsCompareAggregates> aggregates;

final String? alias;

final String calculation;

final List<WorkersObservabilityQueryResultsCompareSeries> series;

Map<String, dynamic> toJson() { return {
  'aggregates': aggregates.map((e) => e.toJson()).toList(),
  'alias': ?alias,
  'calculation': calculation,
  'series': series.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('aggregates') &&
      json.containsKey('calculation') && json['calculation'] is String &&
      json.containsKey('series'); } 
WorkersObservabilityQueryResultsCompare copyWith({List<WorkersObservabilityQueryResultsCompareAggregates>? aggregates, String Function()? alias, String? calculation, List<WorkersObservabilityQueryResultsCompareSeries>? series, }) { return WorkersObservabilityQueryResultsCompare(
  aggregates: aggregates ?? this.aggregates,
  alias: alias != null ? alias() : this.alias,
  calculation: calculation ?? this.calculation,
  series: series ?? this.series,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityQueryResultsCompare &&
          listEquals(aggregates, other.aggregates) &&
          alias == other.alias &&
          calculation == other.calculation &&
          listEquals(series, other.series); } 
@override int get hashCode { return Object.hash(Object.hashAll(aggregates), alias, calculation, Object.hashAll(series)); } 
@override String toString() { return 'WorkersObservabilityQueryResultsCompare(aggregates: $aggregates, alias: $alias, calculation: $calculation, series: $series)'; } 
 }
