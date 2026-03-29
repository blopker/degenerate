// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_summary_by_vector_response_result_meta_confidence_info_annotations.dart';final class RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfo {const RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfo copyWith({List<RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
