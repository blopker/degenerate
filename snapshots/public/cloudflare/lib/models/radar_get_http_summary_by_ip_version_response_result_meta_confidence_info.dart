// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_summary_by_ip_version_response_result_meta_confidence_info_annotations.dart';final class RadarGetHttpSummaryByIpVersionResponseResultMetaConfidenceInfo {const RadarGetHttpSummaryByIpVersionResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetHttpSummaryByIpVersionResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByIpVersionResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetHttpSummaryByIpVersionResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetHttpSummaryByIpVersionResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetHttpSummaryByIpVersionResponseResultMetaConfidenceInfo copyWith({List<RadarGetHttpSummaryByIpVersionResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetHttpSummaryByIpVersionResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByIpVersionResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetHttpSummaryByIpVersionResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
