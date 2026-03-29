// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_by_edns_response_result_meta_confidence_info_annotations.dart';final class RadarGetDnsAs112TimeseriesByEdnsResponseResultMetaConfidenceInfo {const RadarGetDnsAs112TimeseriesByEdnsResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetDnsAs112TimeseriesByEdnsResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesByEdnsResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesByEdnsResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetDnsAs112TimeseriesByEdnsResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetDnsAs112TimeseriesByEdnsResponseResultMetaConfidenceInfo copyWith({List<RadarGetDnsAs112TimeseriesByEdnsResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetDnsAs112TimeseriesByEdnsResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesByEdnsResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByEdnsResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
