// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetQualityIndexTimeseriesGroupResponseResultSerie0 {const RadarGetQualityIndexTimeseriesGroupResponseResultSerie0({required this.p25, required this.p50, required this.p75, required this.timestamps, });

factory RadarGetQualityIndexTimeseriesGroupResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetQualityIndexTimeseriesGroupResponseResultSerie0(
  p25: (json['p25'] as List<dynamic>).map((e) => e as String).toList(),
  p50: (json['p50'] as List<dynamic>).map((e) => e as String).toList(),
  p75: (json['p75'] as List<dynamic>).map((e) => e as String).toList(),
  timestamps: (json['timestamps'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> p25;

final List<String> p50;

final List<String> p75;

final List<String> timestamps;

Map<String, dynamic> toJson() { return {
  'p25': p25,
  'p50': p50,
  'p75': p75,
  'timestamps': timestamps,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('p25') &&
      json.containsKey('p50') &&
      json.containsKey('p75') &&
      json.containsKey('timestamps'); } 
RadarGetQualityIndexTimeseriesGroupResponseResultSerie0 copyWith({List<String>? p25, List<String>? p50, List<String>? p75, List<String>? timestamps, }) { return RadarGetQualityIndexTimeseriesGroupResponseResultSerie0(
  p25: p25 ?? this.p25,
  p50: p50 ?? this.p50,
  p75: p75 ?? this.p75,
  timestamps: timestamps ?? this.timestamps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualityIndexTimeseriesGroupResponseResultSerie0 &&
          listEquals(p25, other.p25) &&
          listEquals(p50, other.p50) &&
          listEquals(p75, other.p75) &&
          listEquals(timestamps, other.timestamps); } 
@override int get hashCode { return Object.hash(Object.hashAll(p25), Object.hashAll(p50), Object.hashAll(p75), Object.hashAll(timestamps)); } 
@override String toString() { return 'RadarGetQualityIndexTimeseriesGroupResponseResultSerie0(p25: $p25, p50: $p50, p75: $p75, timestamps: $timestamps)'; } 
 }
