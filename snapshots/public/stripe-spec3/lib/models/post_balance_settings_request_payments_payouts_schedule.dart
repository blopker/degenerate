// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays {const PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays._(this.value);

factory PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays.fromJson(String json) { return switch (json) {
  'friday' => friday,
  'monday' => monday,
  'thursday' => thursday,
  'tuesday' => tuesday,
  'wednesday' => wednesday,
  _ => PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays._(json),
}; }

static const PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays friday = PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays._('friday');

static const PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays monday = PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays._('monday');

static const PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays thursday = PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays._('thursday');

static const PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays tuesday = PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays._('tuesday');

static const PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays wednesday = PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays._('wednesday');

static const List<PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays> values = [friday, monday, thursday, tuesday, wednesday];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays($value)'; } 
 }
@immutable final class PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval {const PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval._(this.value);

factory PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval.fromJson(String json) { return switch (json) {
  'daily' => daily,
  'manual' => manual,
  'monthly' => monthly,
  'weekly' => weekly,
  _ => PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval._(json),
}; }

static const PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval daily = PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval._('daily');

static const PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval manual = PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval._('manual');

static const PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval monthly = PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval._('monthly');

static const PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval weekly = PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval._('weekly');

static const List<PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval> values = [daily, manual, monthly, weekly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval($value)'; } 
 }
@immutable final class PostBalanceSettingsRequestPaymentsPayoutsSchedule {const PostBalanceSettingsRequestPaymentsPayoutsSchedule({this.interval, this.monthlyPayoutDays, this.weeklyPayoutDays, });

factory PostBalanceSettingsRequestPaymentsPayoutsSchedule.fromJson(Map<String, dynamic> json) { return PostBalanceSettingsRequestPaymentsPayoutsSchedule(
  interval: json['interval'] != null ? PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval.fromJson(json['interval'] as String) : null,
  monthlyPayoutDays: (json['monthly_payout_days'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  weeklyPayoutDays: (json['weekly_payout_days'] as List<dynamic>?)?.map((e) => PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays.fromJson(e as String)).toList(),
); }

final PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval? interval;

final List<int>? monthlyPayoutDays;

final List<PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays>? weeklyPayoutDays;

Map<String, dynamic> toJson() { return {
  if (interval != null) 'interval': interval?.toJson(),
  'monthly_payout_days': ?monthlyPayoutDays,
  if (weeklyPayoutDays != null) 'weekly_payout_days': weeklyPayoutDays?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'interval', 'monthly_payout_days', 'weekly_payout_days'}.contains(key)); } 
PostBalanceSettingsRequestPaymentsPayoutsSchedule copyWith({PostBalanceSettingsRequestPaymentsPayoutsScheduleInterval Function()? interval, List<int> Function()? monthlyPayoutDays, List<PostBalanceSettingsRequestPaymentsPayoutsScheduleWeeklyPayoutDays> Function()? weeklyPayoutDays, }) { return PostBalanceSettingsRequestPaymentsPayoutsSchedule(
  interval: interval != null ? interval() : this.interval,
  monthlyPayoutDays: monthlyPayoutDays != null ? monthlyPayoutDays() : this.monthlyPayoutDays,
  weeklyPayoutDays: weeklyPayoutDays != null ? weeklyPayoutDays() : this.weeklyPayoutDays,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBalanceSettingsRequestPaymentsPayoutsSchedule &&
          interval == other.interval &&
          listEquals(monthlyPayoutDays, other.monthlyPayoutDays) &&
          listEquals(weeklyPayoutDays, other.weeklyPayoutDays); } 
@override int get hashCode { return Object.hash(interval, Object.hashAll(monthlyPayoutDays ?? const []), Object.hashAll(weeklyPayoutDays ?? const [])); } 
@override String toString() { return 'PostBalanceSettingsRequestPaymentsPayoutsSchedule(interval: $interval, monthlyPayoutDays: $monthlyPayoutDays, weeklyPayoutDays: $weeklyPayoutDays)'; } 
 }
