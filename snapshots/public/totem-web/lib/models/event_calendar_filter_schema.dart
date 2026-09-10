// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EventCalendarFilterSchema {const EventCalendarFilterSchema({this.spaceSlug, this.month, this.year, });

factory EventCalendarFilterSchema.fromJson(Map<String, dynamic> json) { return EventCalendarFilterSchema(
  spaceSlug: json['space_slug'] as String?,
  month: json['month'] != null ? (json['month'] as num).toInt() : null,
  year: json['year'] != null ? (json['year'] as num).toInt() : null,
); }

/// Space slug
final String? spaceSlug;

/// Month of the year, 1-12
final int? month;

/// Year of the month, e.g. 2024
final int? year;

/// The value with the schema default applied when absent.
String get spaceSlugOrDefault { return spaceSlug ?? ''; } 
/// The value with the schema default applied when absent.
int get monthOrDefault { return month ?? 3; } 
/// The value with the schema default applied when absent.
int get yearOrDefault { return year ?? 2026; } 
Map<String, dynamic> toJson() { return {
  'space_slug': ?spaceSlug,
  'month': ?month,
  'year': ?year,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'space_slug', 'month', 'year'}.contains(key)); } 
EventCalendarFilterSchema copyWith({String? Function()? spaceSlug, int? Function()? month, int? Function()? year, }) { return EventCalendarFilterSchema(
  spaceSlug: spaceSlug != null ? spaceSlug() : this.spaceSlug,
  month: month != null ? month() : this.month,
  year: year != null ? year() : this.year,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EventCalendarFilterSchema &&
          spaceSlug == other.spaceSlug &&
          month == other.month &&
          year == other.year; } 
@override int get hashCode { return Object.hash(spaceSlug, month, year); } 
@override String toString() { return 'EventCalendarFilterSchema(spaceSlug: $spaceSlug, month: $month, year: $year)'; } 
 }
