// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryBySpamResponseResultMetaDateRange {const RadarGetEmailSecuritySummaryBySpamResponseResultMetaDateRange({required this.endTime, required this.startTime, });

factory RadarGetEmailSecuritySummaryBySpamResponseResultMetaDateRange.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryBySpamResponseResultMetaDateRange(
  endTime: DateTime.parse(json['endTime'] as String),
  startTime: DateTime.parse(json['startTime'] as String),
); }

/// Adjusted end of date range.
final DateTime endTime;

/// Adjusted start of date range.
final DateTime startTime;

Map<String, dynamic> toJson() { return {
  'endTime': endTime.toIso8601String(),
  'startTime': startTime.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('endTime') && json['endTime'] is String &&
      json.containsKey('startTime') && json['startTime'] is String; } 
RadarGetEmailSecuritySummaryBySpamResponseResultMetaDateRange copyWith({DateTime? endTime, DateTime? startTime, }) { return RadarGetEmailSecuritySummaryBySpamResponseResultMetaDateRange(
  endTime: endTime ?? this.endTime,
  startTime: startTime ?? this.startTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryBySpamResponseResultMetaDateRange &&
          endTime == other.endTime &&
          startTime == other.startTime; } 
@override int get hashCode { return Object.hash(endTime, startTime); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpamResponseResultMetaDateRange(endTime: $endTime, startTime: $startTime)'; } 
 }
