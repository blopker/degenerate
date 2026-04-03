// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ranking_top_internet_services_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfo {const RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfo copyWith({List<RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
