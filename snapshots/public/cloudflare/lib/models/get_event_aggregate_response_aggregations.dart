// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class GetEventAggregateResponseAggregations {const GetEventAggregateResponseAggregations({required this.count, this.date, this.additionalProperties = const {}, });

factory GetEventAggregateResponseAggregations.fromJson(Map<String, dynamic> json) { return GetEventAggregateResponseAggregations(
  count: (json['count'] as num).toDouble(),
  date: json['date'] as String?,
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'count', 'date'}.contains(e.key)).map((e) => MapEntry(e.key, e.value as String))),
); }

/// Number of events for this aggregation
final double count;

/// Date (if groupByDate is true)
final String? date;

final Map<String,String?> additionalProperties;

Map<String, dynamic> toJson() { return {
  'count': count,
  'date': ?date,
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num; } 
GetEventAggregateResponseAggregations copyWith({double? count, String Function()? date, Map<String, String>? additionalProperties, }) { return GetEventAggregateResponseAggregations(
  count: count ?? this.count,
  date: date != null ? date() : this.date,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetEventAggregateResponseAggregations &&
          count == other.count &&
          date == other.date &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(count, date, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'GetEventAggregateResponseAggregations(count: $count, date: $date, additionalProperties: $additionalProperties)'; } 
 }
