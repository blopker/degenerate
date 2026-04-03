// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersObservabilityQueryResultsCompareAggregatesGroups {const WorkersObservabilityQueryResultsCompareAggregatesGroups({required this.key, required this.value, });

factory WorkersObservabilityQueryResultsCompareAggregatesGroups.fromJson(Map<String, dynamic> json) { return WorkersObservabilityQueryResultsCompareAggregatesGroups(
  key: json['key'] as String,
  value: json['value'],
); }

final String key;

/// One of: String, double, bool
final dynamic value;

Map<String, dynamic> toJson() { return {
  'key': key,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') && json['key'] is String &&
      json.containsKey('value'); } 
WorkersObservabilityQueryResultsCompareAggregatesGroups copyWith({String? key, dynamic value, }) { return WorkersObservabilityQueryResultsCompareAggregatesGroups(
  key: key ?? this.key,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityQueryResultsCompareAggregatesGroups &&
          key == other.key &&
          value == other.value; } 
@override int get hashCode { return Object.hash(key, value); } 
@override String toString() { return 'WorkersObservabilityQueryResultsCompareAggregatesGroups(key: $key, value: $value)'; } 
 }
