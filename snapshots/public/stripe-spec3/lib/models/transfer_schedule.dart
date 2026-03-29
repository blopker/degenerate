// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class TransferScheduleWeeklyPayoutDays {const TransferScheduleWeeklyPayoutDays._(this.value);

factory TransferScheduleWeeklyPayoutDays.fromJson(String json) { return switch (json) {
  'friday' => friday,
  'monday' => monday,
  'thursday' => thursday,
  'tuesday' => tuesday,
  'wednesday' => wednesday,
  _ => TransferScheduleWeeklyPayoutDays._(json),
}; }

static const TransferScheduleWeeklyPayoutDays friday = TransferScheduleWeeklyPayoutDays._('friday');

static const TransferScheduleWeeklyPayoutDays monday = TransferScheduleWeeklyPayoutDays._('monday');

static const TransferScheduleWeeklyPayoutDays thursday = TransferScheduleWeeklyPayoutDays._('thursday');

static const TransferScheduleWeeklyPayoutDays tuesday = TransferScheduleWeeklyPayoutDays._('tuesday');

static const TransferScheduleWeeklyPayoutDays wednesday = TransferScheduleWeeklyPayoutDays._('wednesday');

static const List<TransferScheduleWeeklyPayoutDays> values = [friday, monday, thursday, tuesday, wednesday];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TransferScheduleWeeklyPayoutDays && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TransferScheduleWeeklyPayoutDays($value)'; } 
 }
/// 
final class TransferSchedule {const TransferSchedule({required this.delayDays, required this.interval, this.monthlyAnchor, this.monthlyPayoutDays, this.weeklyAnchor, this.weeklyPayoutDays, });

factory TransferSchedule.fromJson(Map<String, dynamic> json) { return TransferSchedule(
  delayDays: (json['delay_days'] as num).toInt(),
  interval: json['interval'] as String,
  monthlyAnchor: json['monthly_anchor'] != null ? (json['monthly_anchor'] as num).toInt() : null,
  monthlyPayoutDays: (json['monthly_payout_days'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  weeklyAnchor: json['weekly_anchor'] as String?,
  weeklyPayoutDays: (json['weekly_payout_days'] as List<dynamic>?)?.map((e) => TransferScheduleWeeklyPayoutDays.fromJson(e as String)).toList(),
); }

/// The number of days charges for the account will be held before being paid out.
final int delayDays;

/// How frequently funds will be paid out. One of `manual` (payouts only created via API call), `daily`, `weekly`, or `monthly`.
final String interval;

/// The day of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
final int? monthlyAnchor;

/// The days of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
final List<int>? monthlyPayoutDays;

/// The day of the week funds will be paid out, of the style 'monday', 'tuesday', etc. Only shown if `interval` is weekly.
final String? weeklyAnchor;

/// The days of the week when available funds are paid out, specified as an array, for example, [`monday`, `tuesday`]. Only shown if `interval` is weekly.
final List<TransferScheduleWeeklyPayoutDays>? weeklyPayoutDays;

Map<String, dynamic> toJson() { return {
  'delay_days': delayDays,
  'interval': interval,
  'monthly_anchor': ?monthlyAnchor,
  'monthly_payout_days': ?monthlyPayoutDays,
  'weekly_anchor': ?weeklyAnchor,
  if (weeklyPayoutDays != null) 'weekly_payout_days': weeklyPayoutDays?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('delay_days') && json['delay_days'] is num &&
      json.containsKey('interval') && json['interval'] is String; } 
TransferSchedule copyWith({int? delayDays, String? interval, int Function()? monthlyAnchor, List<int> Function()? monthlyPayoutDays, String Function()? weeklyAnchor, List<TransferScheduleWeeklyPayoutDays> Function()? weeklyPayoutDays, }) { return TransferSchedule(
  delayDays: delayDays ?? this.delayDays,
  interval: interval ?? this.interval,
  monthlyAnchor: monthlyAnchor != null ? monthlyAnchor() : this.monthlyAnchor,
  monthlyPayoutDays: monthlyPayoutDays != null ? monthlyPayoutDays() : this.monthlyPayoutDays,
  weeklyAnchor: weeklyAnchor != null ? weeklyAnchor() : this.weeklyAnchor,
  weeklyPayoutDays: weeklyPayoutDays != null ? weeklyPayoutDays() : this.weeklyPayoutDays,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TransferSchedule &&
          delayDays == other.delayDays &&
          interval == other.interval &&
          monthlyAnchor == other.monthlyAnchor &&
          listEquals(monthlyPayoutDays, other.monthlyPayoutDays) &&
          weeklyAnchor == other.weeklyAnchor &&
          listEquals(weeklyPayoutDays, other.weeklyPayoutDays); } 
@override int get hashCode { return Object.hash(delayDays, interval, monthlyAnchor, Object.hashAll(monthlyPayoutDays ?? const []), weeklyAnchor, Object.hashAll(weeklyPayoutDays ?? const [])); } 
@override String toString() { return 'TransferSchedule(delayDays: $delayDays, interval: $interval, monthlyAnchor: $monthlyAnchor, monthlyPayoutDays: $monthlyPayoutDays, weeklyAnchor: $weeklyAnchor, weeklyPayoutDays: $weeklyPayoutDays)'; } 
 }
