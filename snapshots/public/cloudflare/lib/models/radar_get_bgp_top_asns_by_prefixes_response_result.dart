// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bgp_top_asns_by_prefixes_response_result_asns.dart';import 'radar_get_bgp_top_asns_by_prefixes_response_result_meta.dart';@immutable final class RadarGetBgpTopAsnsByPrefixesResponseResult {const RadarGetBgpTopAsnsByPrefixesResponseResult({required this.asns, required this.meta, });

factory RadarGetBgpTopAsnsByPrefixesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetBgpTopAsnsByPrefixesResponseResult(
  asns: (json['asns'] as List<dynamic>).map((e) => RadarGetBgpTopAsnsByPrefixesResponseResultAsns.fromJson(e as Map<String, dynamic>)).toList(),
  meta: RadarGetBgpTopAsnsByPrefixesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
); }

final List<RadarGetBgpTopAsnsByPrefixesResponseResultAsns> asns;

final RadarGetBgpTopAsnsByPrefixesResponseResultMeta meta;

Map<String, dynamic> toJson() { return {
  'asns': asns.map((e) => e.toJson()).toList(),
  'meta': meta.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asns') &&
      json.containsKey('meta'); } 
RadarGetBgpTopAsnsByPrefixesResponseResult copyWith({List<RadarGetBgpTopAsnsByPrefixesResponseResultAsns>? asns, RadarGetBgpTopAsnsByPrefixesResponseResultMeta? meta, }) { return RadarGetBgpTopAsnsByPrefixesResponseResult(
  asns: asns ?? this.asns,
  meta: meta ?? this.meta,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpTopAsnsByPrefixesResponseResult &&
          listEquals(asns, other.asns) &&
          meta == other.meta; } 
@override int get hashCode { return Object.hash(Object.hashAll(asns), meta); } 
@override String toString() { return 'RadarGetBgpTopAsnsByPrefixesResponseResult(asns: $asns, meta: $meta)'; } 
 }
