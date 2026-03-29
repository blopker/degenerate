// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_ases_by_http_version_response_result_meta_confidence_info_annotations.dart';final class RadarGetHttpTopAsesByHttpVersionResponseResultMetaConfidenceInfo {const RadarGetHttpTopAsesByHttpVersionResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetHttpTopAsesByHttpVersionResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopAsesByHttpVersionResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetHttpTopAsesByHttpVersionResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetHttpTopAsesByHttpVersionResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetHttpTopAsesByHttpVersionResponseResultMetaConfidenceInfo copyWith({List<RadarGetHttpTopAsesByHttpVersionResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetHttpTopAsesByHttpVersionResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopAsesByHttpVersionResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetHttpTopAsesByHttpVersionResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
