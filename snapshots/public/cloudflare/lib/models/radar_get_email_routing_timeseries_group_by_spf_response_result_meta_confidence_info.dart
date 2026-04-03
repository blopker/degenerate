// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_timeseries_group_by_spf_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetEmailRoutingTimeseriesGroupBySpfResponseResultMetaConfidenceInfo {const RadarGetEmailRoutingTimeseriesGroupBySpfResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetEmailRoutingTimeseriesGroupBySpfResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupBySpfResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetEmailRoutingTimeseriesGroupBySpfResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetEmailRoutingTimeseriesGroupBySpfResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetEmailRoutingTimeseriesGroupBySpfResponseResultMetaConfidenceInfo copyWith({List<RadarGetEmailRoutingTimeseriesGroupBySpfResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetEmailRoutingTimeseriesGroupBySpfResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupBySpfResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupBySpfResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
