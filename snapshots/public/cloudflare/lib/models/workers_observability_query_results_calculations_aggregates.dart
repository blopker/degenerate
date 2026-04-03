// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_observability_query_results_calculations_aggregates_groups.dart';@immutable final class WorkersObservabilityQueryResultsCalculationsAggregates {const WorkersObservabilityQueryResultsCalculationsAggregates({required this.count, required this.interval, required this.sampleInterval, required this.value, this.groups, });

factory WorkersObservabilityQueryResultsCalculationsAggregates.fromJson(Map<String, dynamic> json) { return WorkersObservabilityQueryResultsCalculationsAggregates(
  count: (json['count'] as num).toDouble(),
  groups: (json['groups'] as List<dynamic>?)?.map((e) => WorkersObservabilityQueryResultsCalculationsAggregatesGroups.fromJson(e as Map<String, dynamic>)).toList(),
  interval: (json['interval'] as num).toDouble(),
  sampleInterval: (json['sampleInterval'] as num).toDouble(),
  value: (json['value'] as num).toDouble(),
); }

final double count;

final List<WorkersObservabilityQueryResultsCalculationsAggregatesGroups>? groups;

final double interval;

final double sampleInterval;

final double value;

Map<String, dynamic> toJson() { return {
  'count': count,
  if (groups != null) 'groups': groups?.map((e) => e.toJson()).toList(),
  'interval': interval,
  'sampleInterval': sampleInterval,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('interval') && json['interval'] is num &&
      json.containsKey('sampleInterval') && json['sampleInterval'] is num &&
      json.containsKey('value') && json['value'] is num; } 
WorkersObservabilityQueryResultsCalculationsAggregates copyWith({double? count, List<WorkersObservabilityQueryResultsCalculationsAggregatesGroups> Function()? groups, double? interval, double? sampleInterval, double? value, }) { return WorkersObservabilityQueryResultsCalculationsAggregates(
  count: count ?? this.count,
  groups: groups != null ? groups() : this.groups,
  interval: interval ?? this.interval,
  sampleInterval: sampleInterval ?? this.sampleInterval,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityQueryResultsCalculationsAggregates &&
          count == other.count &&
          listEquals(groups, other.groups) &&
          interval == other.interval &&
          sampleInterval == other.sampleInterval &&
          value == other.value; } 
@override int get hashCode { return Object.hash(count, Object.hashAll(groups ?? const []), interval, sampleInterval, value); } 
@override String toString() { return 'WorkersObservabilityQueryResultsCalculationsAggregates(count: $count, groups: $groups, interval: $interval, sampleInterval: $sampleInterval, value: $value)'; } 
 }
