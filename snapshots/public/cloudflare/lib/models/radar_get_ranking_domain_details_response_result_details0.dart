// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ranking_domain_details_response_result_details0_categories.dart';import 'radar_get_ranking_domain_details_response_result_details0_top_locations.dart';final class RadarGetRankingDomainDetailsResponseResultDetails0 {const RadarGetRankingDomainDetailsResponseResultDetails0({this.bucket, required this.categories, this.rank, this.topLocations, });

factory RadarGetRankingDomainDetailsResponseResultDetails0.fromJson(Map<String, dynamic> json) { return RadarGetRankingDomainDetailsResponseResultDetails0(
  bucket: json['bucket'] as String?,
  categories: (json['categories'] as List<dynamic>).map((e) => RadarGetRankingDomainDetailsResponseResultDetails0Categories.fromJson(e as Map<String, dynamic>)).toList(),
  rank: json['rank'] != null ? (json['rank'] as num).toInt() : null,
  topLocations: (json['top_locations'] as List<dynamic>?)?.map((e) => RadarGetRankingDomainDetailsResponseResultDetails0TopLocations.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Only available in POPULAR ranking for the most recent ranking.
final String? bucket;

final List<RadarGetRankingDomainDetailsResponseResultDetails0Categories> categories;

final int? rank;

final List<RadarGetRankingDomainDetailsResponseResultDetails0TopLocations>? topLocations;

Map<String, dynamic> toJson() { return {
  'bucket': ?bucket,
  'categories': categories.map((e) => e.toJson()).toList(),
  'rank': ?rank,
  if (topLocations != null) 'top_locations': topLocations?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('categories'); } 
RadarGetRankingDomainDetailsResponseResultDetails0 copyWith({String Function()? bucket, List<RadarGetRankingDomainDetailsResponseResultDetails0Categories>? categories, int Function()? rank, List<RadarGetRankingDomainDetailsResponseResultDetails0TopLocations> Function()? topLocations, }) { return RadarGetRankingDomainDetailsResponseResultDetails0(
  bucket: bucket != null ? bucket() : this.bucket,
  categories: categories ?? this.categories,
  rank: rank != null ? rank() : this.rank,
  topLocations: topLocations != null ? topLocations() : this.topLocations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRankingDomainDetailsResponseResultDetails0 &&
          bucket == other.bucket &&
          listEquals(categories, other.categories) &&
          rank == other.rank &&
          listEquals(topLocations, other.topLocations); } 
@override int get hashCode { return Object.hash(bucket, Object.hashAll(categories), rank, Object.hashAll(topLocations ?? const [])); } 
@override String toString() { return 'RadarGetRankingDomainDetailsResponseResultDetails0(bucket: $bucket, categories: $categories, rank: $rank, topLocations: $topLocations)'; } 
 }
