// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetDnsAs112TimeseriesResponseResultValue {const RadarGetDnsAs112TimeseriesResponseResultValue({required this.timestamps, required this.values, });

factory RadarGetDnsAs112TimeseriesResponseResultValue.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesResponseResultValue(
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
RadarGetDnsAs112TimeseriesResponseResultValue copyWith({List<DateTime>? timestamps, List<String>? values, }) { return RadarGetDnsAs112TimeseriesResponseResultValue(
  timestamps: timestamps ?? this.timestamps,
  values: values ?? this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesResponseResultValue &&
          listEquals(timestamps, other.timestamps) &&
          listEquals(values, other.values); } 
@override int get hashCode { return Object.hash(Object.hashAll(timestamps), Object.hashAll(values)); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesResponseResultValue(timestamps: $timestamps, values: $values)'; } 
 }
