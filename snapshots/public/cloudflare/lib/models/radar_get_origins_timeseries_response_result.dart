// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_origins_timeseries_response_result_meta.dart';final class RadarGetOriginsTimeseriesResponseResult {const RadarGetOriginsTimeseriesResponseResult({required this.meta});

factory RadarGetOriginsTimeseriesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetOriginsTimeseriesResponseResult(
  meta: RadarGetOriginsTimeseriesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetOriginsTimeseriesResponseResultMeta meta;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta'); } 
RadarGetOriginsTimeseriesResponseResult copyWith({RadarGetOriginsTimeseriesResponseResultMeta? meta}) { return RadarGetOriginsTimeseriesResponseResult(
  meta: meta ?? this.meta,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginsTimeseriesResponseResult &&
          meta == other.meta; } 
@override int get hashCode { return meta.hashCode; } 
@override String toString() { return 'RadarGetOriginsTimeseriesResponseResult(meta: $meta)'; } 
 }
