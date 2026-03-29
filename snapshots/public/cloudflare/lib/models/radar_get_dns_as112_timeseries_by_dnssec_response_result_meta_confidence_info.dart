// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_by_dnssec_response_result_meta_confidence_info_annotations.dart';final class RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfo {const RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfo({required this.annotations, required this.level, });

factory RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfo.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfo(
  annotations: (json['annotations'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfoAnnotations.fromJson(e as Map<String, dynamic>)).toList(),
  level: (json['level'] as num).toInt(),
); }

final List<RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfoAnnotations> annotations;

/// Provides an indication of how much confidence Cloudflare has in the data.
final int level;

Map<String, dynamic> toJson() { return {
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'level': level,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations') &&
      json.containsKey('level') && json['level'] is num; } 
RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfo copyWith({List<RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfoAnnotations>? annotations, int? level, }) { return RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfo(
  annotations: annotations ?? this.annotations,
  level: level ?? this.level,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfo &&
          listEquals(annotations, other.annotations) &&
          level == other.level; } 
@override int get hashCode { return Object.hash(Object.hashAll(annotations), level); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfo(annotations: $annotations, level: $level)'; } 
 }
