// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
@immutable final class RecurringInterval {const RecurringInterval._(this.value);

factory RecurringInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => RecurringInterval._(json),
}; }

static const RecurringInterval day = RecurringInterval._('day');

static const RecurringInterval month = RecurringInterval._('month');

static const RecurringInterval week = RecurringInterval._('week');

static const RecurringInterval year = RecurringInterval._('year');

static const List<RecurringInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RecurringInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RecurringInterval($value)'; } 
 }
/// Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
@immutable final class RecurringUsageType {const RecurringUsageType._(this.value);

factory RecurringUsageType.fromJson(String json) { return switch (json) {
  'licensed' => licensed,
  'metered' => metered,
  _ => RecurringUsageType._(json),
}; }

static const RecurringUsageType licensed = RecurringUsageType._('licensed');

static const RecurringUsageType metered = RecurringUsageType._('metered');

static const List<RecurringUsageType> values = [licensed, metered];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RecurringUsageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RecurringUsageType($value)'; } 
 }
/// 
@immutable final class Recurring {const Recurring({required this.interval, required this.intervalCount, required this.usageType, this.meter, });

factory Recurring.fromJson(Map<String, dynamic> json) { return Recurring(
  interval: RecurringInterval.fromJson(json['interval'] as String),
  intervalCount: (json['interval_count'] as num).toInt(),
  meter: json['meter'] as String?,
  usageType: RecurringUsageType.fromJson(json['usage_type'] as String),
); }

/// The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
final RecurringInterval interval;

/// The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
final int intervalCount;

/// The meter tracking the usage of a metered price
final String? meter;

/// Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
final RecurringUsageType usageType;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': intervalCount,
  'meter': ?meter,
  'usage_type': usageType.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval') &&
      json.containsKey('interval_count') && json['interval_count'] is num &&
      json.containsKey('usage_type'); } 
Recurring copyWith({RecurringInterval? interval, int? intervalCount, String? Function()? meter, RecurringUsageType? usageType, }) { return Recurring(
  interval: interval ?? this.interval,
  intervalCount: intervalCount ?? this.intervalCount,
  meter: meter != null ? meter() : this.meter,
  usageType: usageType ?? this.usageType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Recurring &&
          interval == other.interval &&
          intervalCount == other.intervalCount &&
          meter == other.meter &&
          usageType == other.usageType; } 
@override int get hashCode { return Object.hash(interval, intervalCount, meter, usageType); } 
@override String toString() { return 'Recurring(interval: $interval, intervalCount: $intervalCount, meter: $meter, usageType: $usageType)'; } 
 }
