// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingCardholderIndividualDob {const IssuingCardholderIndividualDob({this.day, this.month, this.year, });

factory IssuingCardholderIndividualDob.fromJson(Map<String, dynamic> json) { return IssuingCardholderIndividualDob(
  day: json['day'] != null ? (json['day'] as num).toInt() : null,
  month: json['month'] != null ? (json['month'] as num).toInt() : null,
  year: json['year'] != null ? (json['year'] as num).toInt() : null,
); }

/// The day of birth, between 1 and 31.
final int? day;

/// The month of birth, between 1 and 12.
final int? month;

/// The four-digit year of birth.
final int? year;

Map<String, dynamic> toJson() { return {
  'day': ?day,
  'month': ?month,
  'year': ?year,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'day', 'month', 'year'}.contains(key)); } 
IssuingCardholderIndividualDob copyWith({int? Function()? day, int? Function()? month, int? Function()? year, }) { return IssuingCardholderIndividualDob(
  day: day != null ? day() : this.day,
  month: month != null ? month() : this.month,
  year: year != null ? year() : this.year,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardholderIndividualDob &&
          day == other.day &&
          month == other.month &&
          year == other.year; } 
@override int get hashCode { return Object.hash(day, month, year); } 
@override String toString() { return 'IssuingCardholderIndividualDob(day: $day, month: $month, year: $year)'; } 
 }
