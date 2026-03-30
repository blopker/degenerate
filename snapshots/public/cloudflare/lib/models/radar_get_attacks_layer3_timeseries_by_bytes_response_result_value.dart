// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetAttacksLayer3TimeseriesByBytesResponseResultValue {const RadarGetAttacksLayer3TimeseriesByBytesResponseResultValue({required this.timestamps, required this.values, });

factory RadarGetAttacksLayer3TimeseriesByBytesResponseResultValue.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TimeseriesByBytesResponseResultValue(
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
RadarGetAttacksLayer3TimeseriesByBytesResponseResultValue copyWith({List<DateTime>? timestamps, List<String>? values, }) { return RadarGetAttacksLayer3TimeseriesByBytesResponseResultValue(
  timestamps: timestamps ?? this.timestamps,
  values: values ?? this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TimeseriesByBytesResponseResultValue &&
          listEquals(timestamps, other.timestamps) &&
          listEquals(values, other.values); } 
@override int get hashCode { return Object.hash(Object.hashAll(timestamps), Object.hashAll(values)); } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesByBytesResponseResultValue(timestamps: $timestamps, values: $values)'; } 
 }
