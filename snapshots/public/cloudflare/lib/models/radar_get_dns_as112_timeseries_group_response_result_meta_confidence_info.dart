// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_group_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetDnsAs112TimeseriesGroupResponseResultMetaConfidenceInfo {const RadarGetDnsAs112TimeseriesGroupResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetDnsAs112TimeseriesGroupResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesGroupResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesGroupResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetDnsAs112TimeseriesGroupResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetDnsAs112TimeseriesGroupResponseResultMetaConfidenceInfo copyWith({List<RadarGetDnsAs112TimeseriesGroupResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetDnsAs112TimeseriesGroupResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesGroupResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
