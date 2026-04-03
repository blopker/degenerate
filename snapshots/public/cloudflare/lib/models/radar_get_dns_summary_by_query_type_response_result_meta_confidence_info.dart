// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_summary_by_query_type_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetDnsSummaryByQueryTypeResponseResultMetaConfidenceInfo {const RadarGetDnsSummaryByQueryTypeResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetDnsSummaryByQueryTypeResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByQueryTypeResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetDnsSummaryByQueryTypeResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetDnsSummaryByQueryTypeResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetDnsSummaryByQueryTypeResponseResultMetaConfidenceInfo copyWith({List<RadarGetDnsSummaryByQueryTypeResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetDnsSummaryByQueryTypeResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByQueryTypeResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetDnsSummaryByQueryTypeResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
