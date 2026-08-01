// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class SubscriptionsResourceBillingCycleAnchorConfig {const SubscriptionsResourceBillingCycleAnchorConfig({required this.dayOfMonth, this.hour = const Omittable.absent(), this.minute = const Omittable.absent(), this.month = const Omittable.absent(), this.second = const Omittable.absent(), });

factory SubscriptionsResourceBillingCycleAnchorConfig.fromJson(Map<String, dynamic> json) { return SubscriptionsResourceBillingCycleAnchorConfig(
  dayOfMonth: (json['day_of_month'] as num).toInt(),
  hour: json.containsKey('hour') ? Omittable(json['hour'] != null ? (json['hour'] as num).toInt() : null) : const Omittable.absent(),
  minute: json.containsKey('minute') ? Omittable(json['minute'] != null ? (json['minute'] as num).toInt() : null) : const Omittable.absent(),
  month: json.containsKey('month') ? Omittable(json['month'] != null ? (json['month'] as num).toInt() : null) : const Omittable.absent(),
  second: json.containsKey('second') ? Omittable(json['second'] != null ? (json['second'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The day of the month of the billing_cycle_anchor.
final int dayOfMonth;

/// The hour of the day of the billing_cycle_anchor.
final Omittable<int?> hour;

/// The minute of the hour of the billing_cycle_anchor.
final Omittable<int?> minute;

/// The month to start full cycle billing periods.
final Omittable<int?> month;

/// The second of the minute of the billing_cycle_anchor.
final Omittable<int?> second;

Map<String, dynamic> toJson() { return {
  'day_of_month': dayOfMonth,
  if (hour.isPresent) 'hour': hour.value,
  if (minute.isPresent) 'minute': minute.value,
  if (month.isPresent) 'month': month.value,
  if (second.isPresent) 'second': second.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('day_of_month') && json['day_of_month'] is num; } 
SubscriptionsResourceBillingCycleAnchorConfig copyWith({int? dayOfMonth, Omittable<int?>? hour, Omittable<int?>? minute, Omittable<int?>? month, Omittable<int?>? second, }) { return SubscriptionsResourceBillingCycleAnchorConfig(
  dayOfMonth: dayOfMonth ?? this.dayOfMonth,
  hour: hour ?? this.hour,
  minute: minute ?? this.minute,
  month: month ?? this.month,
  second: second ?? this.second,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionsResourceBillingCycleAnchorConfig &&
          dayOfMonth == other.dayOfMonth &&
          hour == other.hour &&
          minute == other.minute &&
          month == other.month &&
          second == other.second; } 
@override int get hashCode { return Object.hash(dayOfMonth, hour, minute, month, second); } 
@override String toString() { return 'SubscriptionsResourceBillingCycleAnchorConfig(dayOfMonth: $dayOfMonth, hour: $hour, minute: $minute, month: $month, second: $second)'; } 
 }
