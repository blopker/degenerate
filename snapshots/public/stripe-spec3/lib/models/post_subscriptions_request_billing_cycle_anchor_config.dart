// GENERATED CODE - DO NOT MODIFY BY HAND

/// Mutually exclusive with billing_cycle_anchor and only valid with monthly and yearly price intervals. When provided, the billing_cycle_anchor is set to the next occurrence of the day_of_month at the hour, minute, and second UTC.
final class PostSubscriptionsRequestBillingCycleAnchorConfig {const PostSubscriptionsRequestBillingCycleAnchorConfig({required this.dayOfMonth, this.hour, this.minute, this.month, this.second, });

factory PostSubscriptionsRequestBillingCycleAnchorConfig.fromJson(Map<String, dynamic> json) { return PostSubscriptionsRequestBillingCycleAnchorConfig(
  dayOfMonth: (json['day_of_month'] as num).toInt(),
  hour: json['hour'] != null ? (json['hour'] as num).toInt() : null,
  minute: json['minute'] != null ? (json['minute'] as num).toInt() : null,
  month: json['month'] != null ? (json['month'] as num).toInt() : null,
  second: json['second'] != null ? (json['second'] as num).toInt() : null,
); }

final int dayOfMonth;

final int? hour;

final int? minute;

final int? month;

final int? second;

Map<String, dynamic> toJson() { return {
  'day_of_month': dayOfMonth,
  'hour': ?hour,
  'minute': ?minute,
  'month': ?month,
  'second': ?second,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('day_of_month') && json['day_of_month'] is num; } 
PostSubscriptionsRequestBillingCycleAnchorConfig copyWith({int? dayOfMonth, int Function()? hour, int Function()? minute, int Function()? month, int Function()? second, }) { return PostSubscriptionsRequestBillingCycleAnchorConfig(
  dayOfMonth: dayOfMonth ?? this.dayOfMonth,
  hour: hour != null ? hour() : this.hour,
  minute: minute != null ? minute() : this.minute,
  month: month != null ? month() : this.month,
  second: second != null ? second() : this.second,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsRequestBillingCycleAnchorConfig &&
          dayOfMonth == other.dayOfMonth &&
          hour == other.hour &&
          minute == other.minute &&
          month == other.month &&
          second == other.second; } 
@override int get hashCode { return Object.hash(dayOfMonth, hour, minute, month, second); } 
@override String toString() { return 'PostSubscriptionsRequestBillingCycleAnchorConfig(dayOfMonth: $dayOfMonth, hour: $hour, minute: $minute, month: $month, second: $second)'; } 
 }
