// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetEventAggregateResponseAggregations {const GetEventAggregateResponseAggregations({required this.count, this.date, });

factory GetEventAggregateResponseAggregations.fromJson(Map<String, dynamic> json) { return GetEventAggregateResponseAggregations(
  count: (json['count'] as num).toDouble(),
  date: json['date'] as String?,
); }

/// Number of events for this aggregation
final double count;

/// Date (if groupByDate is true)
final String? date;

Map<String, dynamic> toJson() { return {
  'count': count,
  'date': ?date,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num; } 
GetEventAggregateResponseAggregations copyWith({double? count, String Function()? date, }) { return GetEventAggregateResponseAggregations(
  count: count ?? this.count,
  date: date != null ? date() : this.date,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetEventAggregateResponseAggregations &&
          count == other.count &&
          date == other.date; } 
@override int get hashCode { return Object.hash(count, date); } 
@override String toString() { return 'GetEventAggregateResponseAggregations(count: $count, date: $date)'; } 
 }
