// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_top_locations_by_ip_version_response_result_meta.dart';import 'radar_get_dns_as112_top_locations_by_ip_version_response_result_top0.dart';final class RadarGetDnsAs112TopLocationsByIpVersionResponseResult {const RadarGetDnsAs112TopLocationsByIpVersionResponseResult({required this.meta, required this.top0, });

factory RadarGetDnsAs112TopLocationsByIpVersionResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TopLocationsByIpVersionResponseResult(
  meta: RadarGetDnsAs112TopLocationsByIpVersionResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  top0: (json['top_0'] as List<dynamic>).map((e) => RadarGetDnsAs112TopLocationsByIpVersionResponseResultTop0.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Metadata for the results.
final RadarGetDnsAs112TopLocationsByIpVersionResponseResultMeta meta;

final List<RadarGetDnsAs112TopLocationsByIpVersionResponseResultTop0> top0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'top_0': top0.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('top_0'); } 
RadarGetDnsAs112TopLocationsByIpVersionResponseResult copyWith({RadarGetDnsAs112TopLocationsByIpVersionResponseResultMeta? meta, List<RadarGetDnsAs112TopLocationsByIpVersionResponseResultTop0>? top0, }) { return RadarGetDnsAs112TopLocationsByIpVersionResponseResult(
  meta: meta ?? this.meta,
  top0: top0 ?? this.top0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TopLocationsByIpVersionResponseResult &&
          meta == other.meta &&
          listEquals(top0, other.top0); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(top0)); } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsByIpVersionResponseResult(meta: $meta, top0: $top0)'; } 
 }
