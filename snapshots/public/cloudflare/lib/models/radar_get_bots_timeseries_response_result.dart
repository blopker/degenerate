// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_bots_timeseries_response_result_meta.dart';final class RadarGetBotsTimeseriesResponseResult {const RadarGetBotsTimeseriesResponseResult({required this.meta});

factory RadarGetBotsTimeseriesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetBotsTimeseriesResponseResult(
  meta: RadarGetBotsTimeseriesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetBotsTimeseriesResponseResultMeta meta;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta'); } 
RadarGetBotsTimeseriesResponseResult copyWith({RadarGetBotsTimeseriesResponseResultMeta? meta}) { return RadarGetBotsTimeseriesResponseResult(
  meta: meta ?? this.meta,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBotsTimeseriesResponseResult &&
          meta == other.meta; } 
@override int get hashCode { return meta.hashCode; } 
@override String toString() { return 'RadarGetBotsTimeseriesResponseResult(meta: $meta)'; } 
 }
