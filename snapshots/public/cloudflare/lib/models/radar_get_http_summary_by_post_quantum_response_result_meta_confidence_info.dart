// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_summary_by_post_quantum_response_result_meta_confidence_info_annotations.dart';final class RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfo {const RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfo copyWith({List<RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
