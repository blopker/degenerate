// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_ases_by_device_type_response_result_meta_confidence_info_annotations.dart';final class RadarGetHttpTopAsesByDeviceTypeResponseResultMetaConfidenceInfo {const RadarGetHttpTopAsesByDeviceTypeResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetHttpTopAsesByDeviceTypeResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopAsesByDeviceTypeResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetHttpTopAsesByDeviceTypeResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetHttpTopAsesByDeviceTypeResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetHttpTopAsesByDeviceTypeResponseResultMetaConfidenceInfo copyWith({List<RadarGetHttpTopAsesByDeviceTypeResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetHttpTopAsesByDeviceTypeResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopAsesByDeviceTypeResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetHttpTopAsesByDeviceTypeResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
