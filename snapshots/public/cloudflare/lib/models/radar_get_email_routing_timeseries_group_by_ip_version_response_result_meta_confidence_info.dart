// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_timeseries_group_by_ip_version_response_result_meta_confidence_info_annotations.dart';final class RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaConfidenceInfo {const RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaConfidenceInfo copyWith({List<RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
