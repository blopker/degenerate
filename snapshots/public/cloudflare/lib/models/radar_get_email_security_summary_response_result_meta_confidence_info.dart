// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_response_result_meta_confidence_info_annotations.dart';final class RadarGetEmailSecuritySummaryResponseResultMetaConfidenceInfo {const RadarGetEmailSecuritySummaryResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetEmailSecuritySummaryResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetEmailSecuritySummaryResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetEmailSecuritySummaryResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetEmailSecuritySummaryResponseResultMetaConfidenceInfo copyWith({List<RadarGetEmailSecuritySummaryResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetEmailSecuritySummaryResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
