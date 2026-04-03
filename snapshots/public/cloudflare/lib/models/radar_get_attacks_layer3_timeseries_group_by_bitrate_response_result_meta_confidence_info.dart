// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_timeseries_group_by_bitrate_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetAttacksLayer3TimeseriesGroupByBitrateResponseResultMetaConfidenceInfo {const RadarGetAttacksLayer3TimeseriesGroupByBitrateResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetAttacksLayer3TimeseriesGroupByBitrateResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TimeseriesGroupByBitrateResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetAttacksLayer3TimeseriesGroupByBitrateResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetAttacksLayer3TimeseriesGroupByBitrateResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetAttacksLayer3TimeseriesGroupByBitrateResponseResultMetaConfidenceInfo copyWith({List<RadarGetAttacksLayer3TimeseriesGroupByBitrateResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetAttacksLayer3TimeseriesGroupByBitrateResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TimeseriesGroupByBitrateResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByBitrateResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
