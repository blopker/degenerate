// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_timeseries_group_by_http_version_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetHttpTimeseriesGroupByHttpVersionResponseResultMetaConfidenceInfo {const RadarGetHttpTimeseriesGroupByHttpVersionResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetHttpTimeseriesGroupByHttpVersionResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByHttpVersionResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetHttpTimeseriesGroupByHttpVersionResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetHttpTimeseriesGroupByHttpVersionResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetHttpTimeseriesGroupByHttpVersionResponseResultMetaConfidenceInfo copyWith({List<RadarGetHttpTimeseriesGroupByHttpVersionResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetHttpTimeseriesGroupByHttpVersionResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByHttpVersionResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpVersionResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
