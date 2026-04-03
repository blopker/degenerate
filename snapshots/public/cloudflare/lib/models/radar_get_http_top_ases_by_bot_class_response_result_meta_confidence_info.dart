// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_ases_by_bot_class_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetHttpTopAsesByBotClassResponseResultMetaConfidenceInfo {const RadarGetHttpTopAsesByBotClassResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetHttpTopAsesByBotClassResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopAsesByBotClassResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetHttpTopAsesByBotClassResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetHttpTopAsesByBotClassResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetHttpTopAsesByBotClassResponseResultMetaConfidenceInfo copyWith({List<RadarGetHttpTopAsesByBotClassResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetHttpTopAsesByBotClassResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopAsesByBotClassResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetHttpTopAsesByBotClassResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
