// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_verified_bots_top_categories_by_http_requests_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfo {const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfo copyWith({List<RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
