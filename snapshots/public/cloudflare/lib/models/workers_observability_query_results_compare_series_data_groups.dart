// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersObservabilityQueryResultsCompareSeriesDataGroups {const WorkersObservabilityQueryResultsCompareSeriesDataGroups({required this.key, required this.value, });

factory WorkersObservabilityQueryResultsCompareSeriesDataGroups.fromJson(Map<String, dynamic> json) { return WorkersObservabilityQueryResultsCompareSeriesDataGroups(
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
WorkersObservabilityQueryResultsCompareSeriesDataGroups copyWith({String? key, dynamic value, }) { return WorkersObservabilityQueryResultsCompareSeriesDataGroups(
  key: key ?? this.key,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityQueryResultsCompareSeriesDataGroups &&
          key == other.key &&
          value == other.value; } 
@override int get hashCode { return Object.hash(key, value); } 
@override String toString() { return 'WorkersObservabilityQueryResultsCompareSeriesDataGroups(key: $key, value: $value)'; } 
 }
