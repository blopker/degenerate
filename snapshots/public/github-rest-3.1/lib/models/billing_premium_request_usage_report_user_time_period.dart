// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BillingPremiumRequestUsageReportUserTimePeriod {const BillingPremiumRequestUsageReportUserTimePeriod({required this.year, this.month, this.day, });

factory BillingPremiumRequestUsageReportUserTimePeriod.fromJson(Map<String, dynamic> json) { return BillingPremiumRequestUsageReportUserTimePeriod(
  year: (json['year'] as num).toInt(),
  month: json['month'] != null ? (json['month'] as num).toInt() : null,
  day: json['day'] != null ? (json['day'] as num).toInt() : null,
); }

/// The year for the usage report.
final int year;

/// The month for the usage report.
final int? month;

/// The day for the usage report.
final int? day;

Map<String, dynamic> toJson() { return {
  'year': year,
  'month': ?month,
  'day': ?day,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('year') && json['year'] is num; } 
BillingPremiumRequestUsageReportUserTimePeriod copyWith({int? year, int Function()? month, int Function()? day, }) { return BillingPremiumRequestUsageReportUserTimePeriod(
  year: year ?? this.year,
  month: month != null ? month() : this.month,
  day: day != null ? day() : this.day,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingPremiumRequestUsageReportUserTimePeriod &&
          year == other.year &&
          month == other.month &&
          day == other.day; } 
@override int get hashCode { return Object.hash(year, month, day); } 
@override String toString() { return 'BillingPremiumRequestUsageReportUserTimePeriod(year: $year, month: $month, day: $day)'; } 
 }
