// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_quality_index_summary_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetQualityIndexSummaryResponseResultMetaConfidenceInfo {const RadarGetQualityIndexSummaryResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetQualityIndexSummaryResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetQualityIndexSummaryResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetQualityIndexSummaryResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetQualityIndexSummaryResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetQualityIndexSummaryResponseResultMetaConfidenceInfo copyWith({List<RadarGetQualityIndexSummaryResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetQualityIndexSummaryResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualityIndexSummaryResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetQualityIndexSummaryResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
