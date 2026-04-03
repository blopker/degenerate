// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RegistrationDateSpecs {const RegistrationDateSpecs({required this.day, required this.month, required this.year, });

factory RegistrationDateSpecs.fromJson(Map<String, dynamic> json) { return RegistrationDateSpecs(
  day: (json['day'] as num).toInt(),
  month: (json['month'] as num).toInt(),
  year: (json['year'] as num).toInt(),
); }

final int day;

final int month;

final int year;

Map<String, dynamic> toJson() { return {
  'day': day,
  'month': month,
  'year': year,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('day') && json['day'] is num &&
      json.containsKey('month') && json['month'] is num &&
      json.containsKey('year') && json['year'] is num; } 
RegistrationDateSpecs copyWith({int? day, int? month, int? year, }) { return RegistrationDateSpecs(
  day: day ?? this.day,
  month: month ?? this.month,
  year: year ?? this.year,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RegistrationDateSpecs &&
          day == other.day &&
          month == other.month &&
          year == other.year; } 
@override int get hashCode { return Object.hash(day, month, year); } 
@override String toString() { return 'RegistrationDateSpecs(day: $day, month: $month, year: $year)'; } 
 }
