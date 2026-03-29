// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_ases_by_operating_system_response_result_meta_confidence_info_annotations.dart';final class RadarGetHttpTopAsesByOperatingSystemResponseResultMetaConfidenceInfo {const RadarGetHttpTopAsesByOperatingSystemResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetHttpTopAsesByOperatingSystemResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopAsesByOperatingSystemResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetHttpTopAsesByOperatingSystemResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetHttpTopAsesByOperatingSystemResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetHttpTopAsesByOperatingSystemResponseResultMetaConfidenceInfo copyWith({List<RadarGetHttpTopAsesByOperatingSystemResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetHttpTopAsesByOperatingSystemResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopAsesByOperatingSystemResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetHttpTopAsesByOperatingSystemResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
