// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class SubscriptionScheduleCurrentPhase {const SubscriptionScheduleCurrentPhase({required this.endDate, required this.startDate, });

factory SubscriptionScheduleCurrentPhase.fromJson(Map<String, dynamic> json) { return SubscriptionScheduleCurrentPhase(
  endDate: (json['end_date'] as num).toInt(),
  startDate: (json['start_date'] as num).toInt(),
); }

/// The end of this phase of the subscription schedule.
final int endDate;

/// The start of this phase of the subscription schedule.
final int startDate;

Map<String, dynamic> toJson() { return {
  'end_date': endDate,
  'start_date': startDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end_date') && json['end_date'] is num &&
      json.containsKey('start_date') && json['start_date'] is num; } 
SubscriptionScheduleCurrentPhase copyWith({int? endDate, int? startDate, }) { return SubscriptionScheduleCurrentPhase(
  endDate: endDate ?? this.endDate,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionScheduleCurrentPhase &&
          endDate == other.endDate &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(endDate, startDate); } 
@override String toString() { return 'SubscriptionScheduleCurrentPhase(endDate: $endDate, startDate: $startDate)'; } 
 }
