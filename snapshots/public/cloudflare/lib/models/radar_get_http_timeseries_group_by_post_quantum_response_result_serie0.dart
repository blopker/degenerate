// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByPostQuantumResponseResultSerie0 {const RadarGetHttpTimeseriesGroupByPostQuantumResponseResultSerie0({required this.notSupported, required this.supported, required this.timestamps, });

factory RadarGetHttpTimeseriesGroupByPostQuantumResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByPostQuantumResponseResultSerie0(
  notSupported: (json['NOT_SUPPORTED'] as List<dynamic>).map((e) => e as String).toList(),
  supported: (json['SUPPORTED'] as List<dynamic>).map((e) => e as String).toList(),
  timestamps: (json['timestamps'] as List<dynamic>).map((e) => DateTime.parse(e as String)).toList(),
); }

final List<String> notSupported;

final List<String> supported;

final List<DateTime> timestamps;

Map<String, dynamic> toJson() { return {
  'NOT_SUPPORTED': notSupported,
  'SUPPORTED': supported,
  'timestamps': timestamps.map((e) => e.toIso8601String()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('NOT_SUPPORTED') &&
      json.containsKey('SUPPORTED') &&
      json.containsKey('timestamps'); } 
RadarGetHttpTimeseriesGroupByPostQuantumResponseResultSerie0 copyWith({List<String>? notSupported, List<String>? supported, List<DateTime>? timestamps, }) { return RadarGetHttpTimeseriesGroupByPostQuantumResponseResultSerie0(
  notSupported: notSupported ?? this.notSupported,
  supported: supported ?? this.supported,
  timestamps: timestamps ?? this.timestamps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByPostQuantumResponseResultSerie0 &&
          listEquals(notSupported, other.notSupported) &&
          listEquals(supported, other.supported) &&
          listEquals(timestamps, other.timestamps); } 
@override int get hashCode { return Object.hash(Object.hashAll(notSupported), Object.hashAll(supported), Object.hashAll(timestamps)); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByPostQuantumResponseResultSerie0(notSupported: $notSupported, supported: $supported, timestamps: $timestamps)'; } 
 }
