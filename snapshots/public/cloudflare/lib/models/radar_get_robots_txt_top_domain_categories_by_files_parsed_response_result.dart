// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_robots_txt_top_domain_categories_by_files_parsed_response_result_meta.dart';import 'radar_get_robots_txt_top_domain_categories_by_files_parsed_response_result_top0.dart';final class RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResult {const RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResult({required this.meta, required this.top0, });

factory RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResult(
  meta: RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  top0: (json['top_0'] as List<dynamic>).map((e) => RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultTop0.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Metadata for the results.
final RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMeta meta;

final List<RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultTop0> top0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'top_0': top0.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('top_0'); } 
RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResult copyWith({RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMeta? meta, List<RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultTop0>? top0, }) { return RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResult(
  meta: meta ?? this.meta,
  top0: top0 ?? this.top0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResult &&
          meta == other.meta &&
          listEquals(top0, other.top0); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(top0)); } 
@override String toString() { return 'RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResult(meta: $meta, top0: $top0)'; } 
 }
