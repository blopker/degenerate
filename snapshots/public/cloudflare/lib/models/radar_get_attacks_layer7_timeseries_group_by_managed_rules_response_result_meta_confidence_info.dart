// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer7_timeseries_group_by_managed_rules_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResultMetaConfidenceInfo {const RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResultMetaConfidenceInfo copyWith({List<RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
