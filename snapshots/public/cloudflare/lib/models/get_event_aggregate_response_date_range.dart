// GENERATED CODE - DO NOT MODIFY BY HAND

/// Date range used for filtering
final class GetEventAggregateResponseDateRange {const GetEventAggregateResponseDateRange({this.endDate, this.startDate, });

factory GetEventAggregateResponseDateRange.fromJson(Map<String, dynamic> json) { return GetEventAggregateResponseDateRange(
  endDate: json['endDate'] as String?,
  startDate: json['startDate'] as String?,
); }

final String? endDate;

final String? startDate;

Map<String, dynamic> toJson() { return {
  'endDate': ?endDate,
  'startDate': ?startDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'endDate', 'startDate'}.contains(key)); } 
GetEventAggregateResponseDateRange copyWith({String Function()? endDate, String Function()? startDate, }) { return GetEventAggregateResponseDateRange(
  endDate: endDate != null ? endDate() : this.endDate,
  startDate: startDate != null ? startDate() : this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetEventAggregateResponseDateRange &&
          endDate == other.endDate &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(endDate, startDate); } 
@override String toString() { return 'GetEventAggregateResponseDateRange(endDate: $endDate, startDate: $startDate)'; } 
 }
