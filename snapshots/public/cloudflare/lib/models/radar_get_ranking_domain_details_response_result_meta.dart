// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ranking_domain_details_response_result_meta_date_range.dart';final class RadarGetRankingDomainDetailsResponseResultMeta {const RadarGetRankingDomainDetailsResponseResultMeta({required this.dateRange});

factory RadarGetRankingDomainDetailsResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetRankingDomainDetailsResponseResultMeta(
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetRankingDomainDetailsResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RadarGetRankingDomainDetailsResponseResultMetaDateRange> dateRange;

Map<String, dynamic> toJson() { return {
  'dateRange': dateRange.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dateRange'); } 
RadarGetRankingDomainDetailsResponseResultMeta copyWith({List<RadarGetRankingDomainDetailsResponseResultMetaDateRange>? dateRange}) { return RadarGetRankingDomainDetailsResponseResultMeta(
  dateRange: dateRange ?? this.dateRange,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRankingDomainDetailsResponseResultMeta &&
          listEquals(dateRange, other.dateRange); } 
@override int get hashCode { return Object.hashAll(dateRange).hashCode; } 
@override String toString() { return 'RadarGetRankingDomainDetailsResponseResultMeta(dateRange: $dateRange)'; } 
 }
