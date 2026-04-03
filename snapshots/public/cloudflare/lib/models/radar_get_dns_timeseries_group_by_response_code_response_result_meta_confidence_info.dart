// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_timeseries_group_by_response_code_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetDnsTimeseriesGroupByResponseCodeResponseResultMetaConfidenceInfo {const RadarGetDnsTimeseriesGroupByResponseCodeResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetDnsTimeseriesGroupByResponseCodeResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByResponseCodeResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetDnsTimeseriesGroupByResponseCodeResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetDnsTimeseriesGroupByResponseCodeResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetDnsTimeseriesGroupByResponseCodeResponseResultMetaConfidenceInfo copyWith({List<RadarGetDnsTimeseriesGroupByResponseCodeResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetDnsTimeseriesGroupByResponseCodeResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByResponseCodeResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByResponseCodeResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
