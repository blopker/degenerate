// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0 {const RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0({required this.timestamps, this.additionalProperties = const {}, });

factory RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0(
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
RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0 copyWith({List<DateTime>? timestamps, Map<String, List<String>>? additionalProperties, }) { return RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0(
  timestamps: timestamps ?? this.timestamps,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0 &&
          listEquals(timestamps, other.timestamps) &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(Object.hashAll(timestamps), Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0(timestamps: $timestamps, additionalProperties: $additionalProperties)'; } 
 }
