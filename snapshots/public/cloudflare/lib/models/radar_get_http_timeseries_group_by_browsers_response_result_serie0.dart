// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0 {const RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0({required this.timestamps});

factory RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0(
  timestamps: (json['timestamps'] as List<dynamic>).map((e) => DateTime.parse(e as String)).toList(),
); }

final List<DateTime> timestamps;

Map<String, dynamic> toJson() { return {
  'timestamps': timestamps.map((e) => e.toIso8601String()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('timestamps'); } 
RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0 copyWith({List<DateTime>? timestamps}) { return RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0(
  timestamps: timestamps ?? this.timestamps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0 &&
          listEquals(timestamps, other.timestamps); } 
@override int get hashCode { return Object.hashAll(timestamps).hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0(timestamps: $timestamps)'; } 
 }
