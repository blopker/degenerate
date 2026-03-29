// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_timeseries_group_by_spoof_response_result_meta_confidence_info_annotations.dart';final class RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultMetaConfidenceInfo {const RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultMetaConfidenceInfo copyWith({List<RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
