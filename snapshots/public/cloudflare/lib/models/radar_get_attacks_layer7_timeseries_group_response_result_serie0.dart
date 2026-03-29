// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetAttacksLayer7TimeseriesGroupResponseResultSerie0 {const RadarGetAttacksLayer7TimeseriesGroupResponseResultSerie0({required this.timestamps});

factory RadarGetAttacksLayer7TimeseriesGroupResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TimeseriesGroupResponseResultSerie0(
  timestamps: (json['timestamps'] as List<dynamic>).map((e) => DateTime.parse(e as String)).toList(),
); }

final List<DateTime> timestamps;

Map<String, dynamic> toJson() { return {
  'timestamps': timestamps.map((e) => e.toIso8601String()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('timestamps'); } 
RadarGetAttacksLayer7TimeseriesGroupResponseResultSerie0 copyWith({List<DateTime>? timestamps}) { return RadarGetAttacksLayer7TimeseriesGroupResponseResultSerie0(
  timestamps: timestamps ?? this.timestamps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TimeseriesGroupResponseResultSerie0 &&
          listEquals(timestamps, other.timestamps); } 
@override int get hashCode { return Object.hashAll(timestamps).hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupResponseResultSerie0(timestamps: $timestamps)'; } 
 }
