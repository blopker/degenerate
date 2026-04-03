// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetNetflowsTimeseriesResponseResultSerie0 {const RadarGetNetflowsTimeseriesResponseResultSerie0({required this.timestamps, required this.values, });

factory RadarGetNetflowsTimeseriesResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetNetflowsTimeseriesResponseResultSerie0(
  timestamps: (json['timestamps'] as List<dynamic>).map((e) => DateTime.parse(e as String)).toList(),
  values: (json['values'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<DateTime> timestamps;

final List<String> values;

Map<String, dynamic> toJson() { return {
  'timestamps': timestamps.map((e) => e.toIso8601String()).toList(),
  'values': values,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('timestamps') &&
      json.containsKey('values'); } 
RadarGetNetflowsTimeseriesResponseResultSerie0 copyWith({List<DateTime>? timestamps, List<String>? values, }) { return RadarGetNetflowsTimeseriesResponseResultSerie0(
  timestamps: timestamps ?? this.timestamps,
  values: values ?? this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetNetflowsTimeseriesResponseResultSerie0 &&
          listEquals(timestamps, other.timestamps) &&
          listEquals(values, other.values); } 
@override int get hashCode { return Object.hash(Object.hashAll(timestamps), Object.hashAll(values)); } 
@override String toString() { return 'RadarGetNetflowsTimeseriesResponseResultSerie0(timestamps: $timestamps, values: $values)'; } 
 }
