// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_observability_query_results_calculations_aggregates.dart';import 'workers_observability_query_results_calculations_series.dart';@immutable final class WorkersObservabilityQueryResultsCalculations {const WorkersObservabilityQueryResultsCalculations({required this.aggregates, required this.calculation, required this.series, this.alias, });

factory WorkersObservabilityQueryResultsCalculations.fromJson(Map<String, dynamic> json) { return WorkersObservabilityQueryResultsCalculations(
  aggregates: (json['aggregates'] as List<dynamic>).map((e) => WorkersObservabilityQueryResultsCalculationsAggregates.fromJson(e as Map<String, dynamic>)).toList(),
  alias: json['alias'] as String?,
  calculation: json['calculation'] as String,
  series: (json['series'] as List<dynamic>).map((e) => WorkersObservabilityQueryResultsCalculationsSeries.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersObservabilityQueryResultsCalculationsAggregates> aggregates;

final String? alias;

final String calculation;

final List<WorkersObservabilityQueryResultsCalculationsSeries> series;

Map<String, dynamic> toJson() { return {
  'aggregates': aggregates.map((e) => e.toJson()).toList(),
  'alias': ?alias,
  'calculation': calculation,
  'series': series.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('aggregates') &&
      json.containsKey('calculation') && json['calculation'] is String &&
      json.containsKey('series'); } 
WorkersObservabilityQueryResultsCalculations copyWith({List<WorkersObservabilityQueryResultsCalculationsAggregates>? aggregates, String Function()? alias, String? calculation, List<WorkersObservabilityQueryResultsCalculationsSeries>? series, }) { return WorkersObservabilityQueryResultsCalculations(
  aggregates: aggregates ?? this.aggregates,
  alias: alias != null ? alias() : this.alias,
  calculation: calculation ?? this.calculation,
  series: series ?? this.series,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityQueryResultsCalculations &&
          listEquals(aggregates, other.aggregates) &&
          alias == other.alias &&
          calculation == other.calculation &&
          listEquals(series, other.series); } 
@override int get hashCode { return Object.hash(Object.hashAll(aggregates), alias, calculation, Object.hashAll(series)); } 
@override String toString() { return 'WorkersObservabilityQueryResultsCalculations(aggregates: $aggregates, alias: $alias, calculation: $calculation, series: $series)'; } 
 }
