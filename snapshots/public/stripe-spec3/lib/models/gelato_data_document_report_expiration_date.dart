// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Point in Time
@immutable final class GelatoDataDocumentReportExpirationDate {const GelatoDataDocumentReportExpirationDate({this.day = const Omittable.absent(), this.month = const Omittable.absent(), this.year = const Omittable.absent(), });

factory GelatoDataDocumentReportExpirationDate.fromJson(Map<String, dynamic> json) { return GelatoDataDocumentReportExpirationDate(
  day: json.containsKey('day') ? Omittable(json['day'] != null ? (json['day'] as num).toInt() : null) : const Omittable.absent(),
  month: json.containsKey('month') ? Omittable(json['month'] != null ? (json['month'] as num).toInt() : null) : const Omittable.absent(),
  year: json.containsKey('year') ? Omittable(json['year'] != null ? (json['year'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Numerical day between 1 and 31.
final Omittable<int?> day;

/// Numerical month between 1 and 12.
final Omittable<int?> month;

/// The four-digit year.
final Omittable<int?> year;

Map<String, dynamic> toJson() { return {
  if (day.isPresent) 'day': day.value,
  if (month.isPresent) 'month': month.value,
  if (year.isPresent) 'year': year.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'day', 'month', 'year'}.contains(key)); } 
GelatoDataDocumentReportExpirationDate copyWith({Omittable<int?>? day, Omittable<int?>? month, Omittable<int?>? year, }) { return GelatoDataDocumentReportExpirationDate(
  day: day ?? this.day,
  month: month ?? this.month,
  year: year ?? this.year,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoDataDocumentReportExpirationDate &&
          day == other.day &&
          month == other.month &&
          year == other.year; } 
@override int get hashCode { return Object.hash(day, month, year); } 
@override String toString() { return 'GelatoDataDocumentReportExpirationDate(day: $day, month: $month, year: $year)'; } 
 }
