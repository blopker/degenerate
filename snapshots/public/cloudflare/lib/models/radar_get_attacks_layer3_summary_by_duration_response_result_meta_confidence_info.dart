// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_summary_by_duration_response_result_meta_confidence_info_annotations.dart';final class RadarGetAttacksLayer3SummaryByDurationResponseResultMetaConfidenceInfo {const RadarGetAttacksLayer3SummaryByDurationResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetAttacksLayer3SummaryByDurationResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryByDurationResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetAttacksLayer3SummaryByDurationResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetAttacksLayer3SummaryByDurationResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetAttacksLayer3SummaryByDurationResponseResultMetaConfidenceInfo copyWith({List<RadarGetAttacksLayer3SummaryByDurationResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetAttacksLayer3SummaryByDurationResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryByDurationResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByDurationResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
