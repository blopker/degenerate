// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ai_inference_summary_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfo {const RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfo copyWith({List<RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
