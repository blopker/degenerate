// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_event_aggregate_response_aggregations.dart';import 'get_event_aggregate_response_date_range.dart';@immutable final class GetEventAggregateResponse {const GetEventAggregateResponse({required this.aggregateBy, required this.aggregations, required this.total, this.dateRange, });

factory GetEventAggregateResponse.fromJson(Map<String, dynamic> json) { return GetEventAggregateResponse(
  aggregateBy: json['aggregateBy'] as String,
  aggregations: (json['aggregations'] as List<dynamic>).map((e) => GetEventAggregateResponseAggregations.fromJson(e as Map<String, dynamic>)).toList(),
  dateRange: json['dateRange'] != null ? GetEventAggregateResponseDateRange.fromJson(json['dateRange'] as Map<String, dynamic>) : null,
  total: (json['total'] as num).toDouble(),
); }

/// Column(s) that were aggregated by
final String aggregateBy;

/// Array of aggregation results with dynamic fields based on aggregateBy columns
final List<GetEventAggregateResponseAggregations> aggregations;

/// Date range used for filtering
final GetEventAggregateResponseDateRange? dateRange;

/// Total number of events in the aggregation
final double total;

Map<String, dynamic> toJson() { return {
  'aggregateBy': aggregateBy,
  'aggregations': aggregations.map((e) => e.toJson()).toList(),
  if (dateRange != null) 'dateRange': dateRange?.toJson(),
  'total': total,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('aggregateBy') && json['aggregateBy'] is String &&
      json.containsKey('aggregations') &&
      json.containsKey('total') && json['total'] is num; } 
GetEventAggregateResponse copyWith({String? aggregateBy, List<GetEventAggregateResponseAggregations>? aggregations, GetEventAggregateResponseDateRange Function()? dateRange, double? total, }) { return GetEventAggregateResponse(
  aggregateBy: aggregateBy ?? this.aggregateBy,
  aggregations: aggregations ?? this.aggregations,
  dateRange: dateRange != null ? dateRange() : this.dateRange,
  total: total ?? this.total,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetEventAggregateResponse &&
          aggregateBy == other.aggregateBy &&
          listEquals(aggregations, other.aggregations) &&
          dateRange == other.dateRange &&
          total == other.total; } 
@override int get hashCode { return Object.hash(aggregateBy, Object.hashAll(aggregations), dateRange, total); } 
@override String toString() { return 'GetEventAggregateResponse(aggregateBy: $aggregateBy, aggregations: $aggregations, dateRange: $dateRange, total: $total)'; } 
 }
