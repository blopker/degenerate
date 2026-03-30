// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_request_settings_payouts_schedule_delay_days.dart';final class PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays {const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays._(this.value);

factory PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays.fromJson(String json) { return switch (json) {
  'friday' => friday,
  'monday' => monday,
  'thursday' => thursday,
  'tuesday' => tuesday,
  'wednesday' => wednesday,
  _ => PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays._(json),
}; }

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays friday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays._('friday');

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays monday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays._('monday');

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays thursday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays._('thursday');

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays tuesday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays._('tuesday');

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays wednesday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays._('wednesday');

static const List<PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays> values = [friday, monday, thursday, tuesday, wednesday];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays($value)'; } 
 }
final class PostAccountsAccountRequestSettingsPayoutsScheduleInterval {const PostAccountsAccountRequestSettingsPayoutsScheduleInterval._(this.value);

factory PostAccountsAccountRequestSettingsPayoutsScheduleInterval.fromJson(String json) { return switch (json) {
  'daily' => daily,
  'manual' => manual,
  'monthly' => monthly,
  'weekly' => weekly,
  _ => PostAccountsAccountRequestSettingsPayoutsScheduleInterval._(json),
}; }

static const PostAccountsAccountRequestSettingsPayoutsScheduleInterval daily = PostAccountsAccountRequestSettingsPayoutsScheduleInterval._('daily');

static const PostAccountsAccountRequestSettingsPayoutsScheduleInterval manual = PostAccountsAccountRequestSettingsPayoutsScheduleInterval._('manual');

static const PostAccountsAccountRequestSettingsPayoutsScheduleInterval monthly = PostAccountsAccountRequestSettingsPayoutsScheduleInterval._('monthly');

static const PostAccountsAccountRequestSettingsPayoutsScheduleInterval weekly = PostAccountsAccountRequestSettingsPayoutsScheduleInterval._('weekly');

static const List<PostAccountsAccountRequestSettingsPayoutsScheduleInterval> values = [daily, manual, monthly, weekly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestSettingsPayoutsScheduleInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestSettingsPayoutsScheduleInterval($value)'; } 
 }
final class PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor {const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor._(this.value);

factory PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor.fromJson(String json) { return switch (json) {
  'friday' => friday,
  'monday' => monday,
  'saturday' => saturday,
  'sunday' => sunday,
  'thursday' => thursday,
  'tuesday' => tuesday,
  'wednesday' => wednesday,
  _ => PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor._(json),
}; }

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor friday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor._('friday');

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor monday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor._('monday');

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor saturday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor._('saturday');

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor sunday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor._('sunday');

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor thursday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor._('thursday');

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor tuesday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor._('tuesday');

static const PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor wednesday = PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor._('wednesday');

static const List<PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor> values = [friday, monday, saturday, sunday, thursday, tuesday, wednesday];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor($value)'; } 
 }
final class PostAccountsAccountRequestSettingsPayoutsSchedule {const PostAccountsAccountRequestSettingsPayoutsSchedule({this.delayDays, this.interval, this.monthlyAnchor, this.monthlyPayoutDays, this.weeklyAnchor, this.weeklyPayoutDays, });

factory PostAccountsAccountRequestSettingsPayoutsSchedule.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestSettingsPayoutsSchedule(
  delayDays: json['delay_days'] != null ? OneOf2.parse(json['delay_days'], fromA: (v) => PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1.fromJson(v as String), fromB: (v) => (v as num).toInt(),) : null,
  interval: json['interval'] != null ? PostAccountsAccountRequestSettingsPayoutsScheduleInterval.fromJson(json['interval'] as String) : null,
  monthlyAnchor: json['monthly_anchor'] != null ? (json['monthly_anchor'] as num).toInt() : null,
  monthlyPayoutDays: (json['monthly_payout_days'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  weeklyAnchor: json['weekly_anchor'] != null ? PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor.fromJson(json['weekly_anchor'] as String) : null,
  weeklyPayoutDays: (json['weekly_payout_days'] as List<dynamic>?)?.map((e) => PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays.fromJson(e as String)).toList(),
); }

final PostAccountsAccountRequestSettingsPayoutsScheduleDelayDays? delayDays;

final PostAccountsAccountRequestSettingsPayoutsScheduleInterval? interval;

final int? monthlyAnchor;

final List<int>? monthlyPayoutDays;

final PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor? weeklyAnchor;

final List<PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays>? weeklyPayoutDays;

Map<String, dynamic> toJson() { return {
  if (delayDays != null) 'delay_days': delayDays?.toJson(),
  if (interval != null) 'interval': interval?.toJson(),
  'monthly_anchor': ?monthlyAnchor,
  'monthly_payout_days': ?monthlyPayoutDays,
  if (weeklyAnchor != null) 'weekly_anchor': weeklyAnchor?.toJson(),
  if (weeklyPayoutDays != null) 'weekly_payout_days': weeklyPayoutDays?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'delay_days', 'interval', 'monthly_anchor', 'monthly_payout_days', 'weekly_anchor', 'weekly_payout_days'}.contains(key)); } 
PostAccountsAccountRequestSettingsPayoutsSchedule copyWith({PostAccountsAccountRequestSettingsPayoutsScheduleDelayDays Function()? delayDays, PostAccountsAccountRequestSettingsPayoutsScheduleInterval Function()? interval, int Function()? monthlyAnchor, List<int> Function()? monthlyPayoutDays, PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyAnchor Function()? weeklyAnchor, List<PostAccountsAccountRequestSettingsPayoutsScheduleWeeklyPayoutDays> Function()? weeklyPayoutDays, }) { return PostAccountsAccountRequestSettingsPayoutsSchedule(
  delayDays: delayDays != null ? delayDays() : this.delayDays,
  interval: interval != null ? interval() : this.interval,
  monthlyAnchor: monthlyAnchor != null ? monthlyAnchor() : this.monthlyAnchor,
  monthlyPayoutDays: monthlyPayoutDays != null ? monthlyPayoutDays() : this.monthlyPayoutDays,
  weeklyAnchor: weeklyAnchor != null ? weeklyAnchor() : this.weeklyAnchor,
  weeklyPayoutDays: weeklyPayoutDays != null ? weeklyPayoutDays() : this.weeklyPayoutDays,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestSettingsPayoutsSchedule &&
          delayDays == other.delayDays &&
          interval == other.interval &&
          monthlyAnchor == other.monthlyAnchor &&
          listEquals(monthlyPayoutDays, other.monthlyPayoutDays) &&
          weeklyAnchor == other.weeklyAnchor &&
          listEquals(weeklyPayoutDays, other.weeklyPayoutDays); } 
@override int get hashCode { return Object.hash(delayDays, interval, monthlyAnchor, Object.hashAll(monthlyPayoutDays ?? const []), weeklyAnchor, Object.hashAll(weeklyPayoutDays ?? const [])); } 
@override String toString() { return 'PostAccountsAccountRequestSettingsPayoutsSchedule(delayDays: $delayDays, interval: $interval, monthlyAnchor: $monthlyAnchor, monthlyPayoutDays: $monthlyPayoutDays, weeklyAnchor: $weeklyAnchor, weeklyPayoutDays: $weeklyPayoutDays)'; } 
 }
