// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetLeakedCredentialChecksTimeseriesGroupResponseResultSerie0 {const RadarGetLeakedCredentialChecksTimeseriesGroupResponseResultSerie0({required this.timestamps});

factory RadarGetLeakedCredentialChecksTimeseriesGroupResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetLeakedCredentialChecksTimeseriesGroupResponseResultSerie0(
  timestamps: (json['timestamps'] as List<dynamic>).map((e) => DateTime.parse(e as String)).toList(),
); }

final List<DateTime> timestamps;

Map<String, dynamic> toJson() { return {
  'timestamps': timestamps.map((e) => e.toIso8601String()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('timestamps'); } 
RadarGetLeakedCredentialChecksTimeseriesGroupResponseResultSerie0 copyWith({List<DateTime>? timestamps}) { return RadarGetLeakedCredentialChecksTimeseriesGroupResponseResultSerie0(
  timestamps: timestamps ?? this.timestamps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetLeakedCredentialChecksTimeseriesGroupResponseResultSerie0 &&
          listEquals(timestamps, other.timestamps); } 
@override int get hashCode { return Object.hashAll(timestamps).hashCode; } 
@override String toString() { return 'RadarGetLeakedCredentialChecksTimeseriesGroupResponseResultSerie0(timestamps: $timestamps)'; } 
 }
