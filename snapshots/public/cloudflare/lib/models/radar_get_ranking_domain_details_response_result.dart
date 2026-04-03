// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ranking_domain_details_response_result_details0.dart';import 'radar_get_ranking_domain_details_response_result_meta.dart';@immutable final class RadarGetRankingDomainDetailsResponseResult {const RadarGetRankingDomainDetailsResponseResult({required this.details0, required this.meta, });

factory RadarGetRankingDomainDetailsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetRankingDomainDetailsResponseResult(
  details0: RadarGetRankingDomainDetailsResponseResultDetails0.fromJson(json['details_0'] as Map<String, dynamic>),
  meta: RadarGetRankingDomainDetailsResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
); }

final RadarGetRankingDomainDetailsResponseResultDetails0 details0;

final RadarGetRankingDomainDetailsResponseResultMeta meta;

Map<String, dynamic> toJson() { return {
  'details_0': details0.toJson(),
  'meta': meta.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('details_0') &&
      json.containsKey('meta'); } 
RadarGetRankingDomainDetailsResponseResult copyWith({RadarGetRankingDomainDetailsResponseResultDetails0? details0, RadarGetRankingDomainDetailsResponseResultMeta? meta, }) { return RadarGetRankingDomainDetailsResponseResult(
  details0: details0 ?? this.details0,
  meta: meta ?? this.meta,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRankingDomainDetailsResponseResult &&
          details0 == other.details0 &&
          meta == other.meta; } 
@override int get hashCode { return Object.hash(details0, meta); } 
@override String toString() { return 'RadarGetRankingDomainDetailsResponseResult(details0: $details0, meta: $meta)'; } 
 }
