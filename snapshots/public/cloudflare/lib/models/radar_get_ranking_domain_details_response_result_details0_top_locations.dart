// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetRankingDomainDetailsResponseResultDetails0TopLocations {const RadarGetRankingDomainDetailsResponseResultDetails0TopLocations({required this.locationCode, required this.locationName, required this.rank, });

factory RadarGetRankingDomainDetailsResponseResultDetails0TopLocations.fromJson(Map<String, dynamic> json) { return RadarGetRankingDomainDetailsResponseResultDetails0TopLocations(
  locationCode: json['locationCode'] as String,
  locationName: json['locationName'] as String,
  rank: (json['rank'] as num).toInt(),
); }

final String locationCode;

final String locationName;

final int rank;

Map<String, dynamic> toJson() { return {
  'locationCode': locationCode,
  'locationName': locationName,
  'rank': rank,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('locationCode') && json['locationCode'] is String &&
      json.containsKey('locationName') && json['locationName'] is String &&
      json.containsKey('rank') && json['rank'] is num; } 
RadarGetRankingDomainDetailsResponseResultDetails0TopLocations copyWith({String? locationCode, String? locationName, int? rank, }) { return RadarGetRankingDomainDetailsResponseResultDetails0TopLocations(
  locationCode: locationCode ?? this.locationCode,
  locationName: locationName ?? this.locationName,
  rank: rank ?? this.rank,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRankingDomainDetailsResponseResultDetails0TopLocations &&
          locationCode == other.locationCode &&
          locationName == other.locationName &&
          rank == other.rank; } 
@override int get hashCode { return Object.hash(locationCode, locationName, rank); } 
@override String toString() { return 'RadarGetRankingDomainDetailsResponseResultDetails0TopLocations(locationCode: $locationCode, locationName: $locationName, rank: $rank)'; } 
 }
