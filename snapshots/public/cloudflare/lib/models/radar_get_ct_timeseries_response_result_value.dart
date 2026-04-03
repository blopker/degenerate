// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtTimeseriesResponseResultValue {const RadarGetCtTimeseriesResponseResultValue({required this.timestamps, required this.values, });

factory RadarGetCtTimeseriesResponseResultValue.fromJson(Map<String, dynamic> json) { return RadarGetCtTimeseriesResponseResultValue(
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
RadarGetCtTimeseriesResponseResultValue copyWith({List<DateTime>? timestamps, List<String>? values, }) { return RadarGetCtTimeseriesResponseResultValue(
  timestamps: timestamps ?? this.timestamps,
  values: values ?? this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtTimeseriesResponseResultValue &&
          listEquals(timestamps, other.timestamps) &&
          listEquals(values, other.values); } 
@override int get hashCode { return Object.hash(Object.hashAll(timestamps), Object.hashAll(values)); } 
@override String toString() { return 'RadarGetCtTimeseriesResponseResultValue(timestamps: $timestamps, values: $values)'; } 
 }
