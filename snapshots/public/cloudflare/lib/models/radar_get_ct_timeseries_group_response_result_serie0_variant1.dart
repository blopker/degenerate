// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtTimeseriesGroupResponseResultSerie0Variant1 {const RadarGetCtTimeseriesGroupResponseResultSerie0Variant1({required this.timestamps, this.additionalProperties = const {}, });

factory RadarGetCtTimeseriesGroupResponseResultSerie0Variant1.fromJson(Map<String, dynamic> json) { return RadarGetCtTimeseriesGroupResponseResultSerie0Variant1(
  timestamps: (json['timestamps'] as List<dynamic>).map((e) => DateTime.parse(e as String)).toList(),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'timestamps'}.contains(e.key)).map((e) => MapEntry(e.key, (e.value as List<dynamic>).map((e) => e as String).toList()))),
); }

final List<DateTime> timestamps;

final Map<String,List<String>> additionalProperties;

Map<String, dynamic> toJson() { return {
  'timestamps': timestamps.map((e) => e.toIso8601String()).toList(),
  ...additionalProperties.map((k, v) => MapEntry(k, v)),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('timestamps'); } 
RadarGetCtTimeseriesGroupResponseResultSerie0Variant1 copyWith({List<DateTime>? timestamps, Map<String, List<String>>? additionalProperties, }) { return RadarGetCtTimeseriesGroupResponseResultSerie0Variant1(
  timestamps: timestamps ?? this.timestamps,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtTimeseriesGroupResponseResultSerie0Variant1 &&
          listEquals(timestamps, other.timestamps) &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(Object.hashAll(timestamps), Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'RadarGetCtTimeseriesGroupResponseResultSerie0Variant1(timestamps: $timestamps, additionalProperties: $additionalProperties)'; } 
 }
