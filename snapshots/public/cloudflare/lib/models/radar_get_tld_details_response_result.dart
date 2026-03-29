// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_tld_details_response_result_tld.dart';final class RadarGetTldDetailsResponseResult {const RadarGetTldDetailsResponseResult({required this.tld});

factory RadarGetTldDetailsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetTldDetailsResponseResult(
  tld: RadarGetTldDetailsResponseResultTld.fromJson(json['tld'] as Map<String, dynamic>),
); }

final RadarGetTldDetailsResponseResultTld tld;

Map<String, dynamic> toJson() { return {
  'tld': tld.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tld'); } 
RadarGetTldDetailsResponseResult copyWith({RadarGetTldDetailsResponseResultTld? tld}) { return RadarGetTldDetailsResponseResult(
  tld: tld ?? this.tld,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTldDetailsResponseResult &&
          tld == other.tld; } 
@override int get hashCode { return tld.hashCode; } 
@override String toString() { return 'RadarGetTldDetailsResponseResult(tld: $tld)'; } 
 }
