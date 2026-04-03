// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtTimeseriesGroupResponseResultMetaDateRange {const RadarGetCtTimeseriesGroupResponseResultMetaDateRange({required this.endTime, required this.startTime, });

factory RadarGetCtTimeseriesGroupResponseResultMetaDateRange.fromJson(Map<String, dynamic> json) { return RadarGetCtTimeseriesGroupResponseResultMetaDateRange(
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
RadarGetCtTimeseriesGroupResponseResultMetaDateRange copyWith({DateTime? endTime, DateTime? startTime, }) { return RadarGetCtTimeseriesGroupResponseResultMetaDateRange(
  endTime: endTime ?? this.endTime,
  startTime: startTime ?? this.startTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtTimeseriesGroupResponseResultMetaDateRange &&
          endTime == other.endTime &&
          startTime == other.startTime; } 
@override int get hashCode { return Object.hash(endTime, startTime); } 
@override String toString() { return 'RadarGetCtTimeseriesGroupResponseResultMetaDateRange(endTime: $endTime, startTime: $startTime)'; } 
 }
