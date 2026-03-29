// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_crawlers_timeseries_group_response_result_meta_confidence_info_annotations.dart';final class RadarGetCrawlersTimeseriesGroupResponseResultMetaConfidenceInfo {const RadarGetCrawlersTimeseriesGroupResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetCrawlersTimeseriesGroupResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetCrawlersTimeseriesGroupResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetCrawlersTimeseriesGroupResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetCrawlersTimeseriesGroupResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetCrawlersTimeseriesGroupResponseResultMetaConfidenceInfo copyWith({List<RadarGetCrawlersTimeseriesGroupResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetCrawlersTimeseriesGroupResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCrawlersTimeseriesGroupResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetCrawlersTimeseriesGroupResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
