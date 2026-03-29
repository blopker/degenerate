// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetAiInferenceTimeseriesGroupResponseResultSerie0 {const RadarGetAiInferenceTimeseriesGroupResponseResultSerie0({required this.timestamps});

factory RadarGetAiInferenceTimeseriesGroupResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetAiInferenceTimeseriesGroupResponseResultSerie0(
  timestamps: (json['timestamps'] as List<dynamic>).map((e) => DateTime.parse(e as String)).toList(),
); }

final List<DateTime> timestamps;

Map<String, dynamic> toJson() { return {
  'timestamps': timestamps.map((e) => e.toIso8601String()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('timestamps'); } 
RadarGetAiInferenceTimeseriesGroupResponseResultSerie0 copyWith({List<DateTime>? timestamps}) { return RadarGetAiInferenceTimeseriesGroupResponseResultSerie0(
  timestamps: timestamps ?? this.timestamps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiInferenceTimeseriesGroupResponseResultSerie0 &&
          listEquals(timestamps, other.timestamps); } 
@override int get hashCode { return Object.hashAll(timestamps).hashCode; } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupResponseResultSerie0(timestamps: $timestamps)'; } 
 }
