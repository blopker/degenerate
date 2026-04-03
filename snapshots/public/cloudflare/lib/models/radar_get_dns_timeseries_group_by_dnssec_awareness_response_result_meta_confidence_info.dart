// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_timeseries_group_by_dnssec_awareness_response_result_meta_confidence_info_annotations.dart';@immutable final class RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMetaConfidenceInfo {const RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMetaConfidenceInfo copyWith({List<RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
