// GENERATED CODE - DO NOT MODIFY BY HAND

final class EventCalendarFilterSchema {const EventCalendarFilterSchema({this.spaceSlug = '', this.month = 3, this.year = 2026, });

factory EventCalendarFilterSchema.fromJson(Map<String, dynamic> json) { return EventCalendarFilterSchema(
  spaceSlug: json.containsKey('space_slug') ? json['space_slug'] as String : '',
  month: json.containsKey('month') ? (json['month'] as num).toInt() : 3,
  year: json.containsKey('year') ? (json['year'] as num).toInt() : 2026,
); }

/// Space slug
final String spaceSlug;

/// Month of the year, 1-12
final int month;

/// Year of the month, e.g. 2024
final int year;

Map<String, dynamic> toJson() { return {
  'space_slug': spaceSlug,
  'month': month,
  'year': year,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
EventCalendarFilterSchema copyWith({String Function()? spaceSlug, int Function()? month, int Function()? year, }) { return EventCalendarFilterSchema(
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
