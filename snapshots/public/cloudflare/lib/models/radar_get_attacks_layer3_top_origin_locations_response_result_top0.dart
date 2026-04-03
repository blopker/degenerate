// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3TopOriginLocationsResponseResultTop0 {const RadarGetAttacksLayer3TopOriginLocationsResponseResultTop0({required this.originCountryAlpha2, required this.originCountryName, required this.rank, required this.value, });

factory RadarGetAttacksLayer3TopOriginLocationsResponseResultTop0.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TopOriginLocationsResponseResultTop0(
  originCountryAlpha2: json['originCountryAlpha2'] as String,
  originCountryName: json['originCountryName'] as String,
  rank: (json['rank'] as num).toDouble(),
  value: json['value'] as String,
); }

final String originCountryAlpha2;

final String originCountryName;

final double rank;

final String value;

Map<String, dynamic> toJson() { return {
  'originCountryAlpha2': originCountryAlpha2,
  'originCountryName': originCountryName,
  'rank': rank,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('originCountryAlpha2') && json['originCountryAlpha2'] is String &&
      json.containsKey('originCountryName') && json['originCountryName'] is String &&
      json.containsKey('rank') && json['rank'] is num &&
      json.containsKey('value') && json['value'] is String; } 
RadarGetAttacksLayer3TopOriginLocationsResponseResultTop0 copyWith({String? originCountryAlpha2, String? originCountryName, double? rank, String? value, }) { return RadarGetAttacksLayer3TopOriginLocationsResponseResultTop0(
  originCountryAlpha2: originCountryAlpha2 ?? this.originCountryAlpha2,
  originCountryName: originCountryName ?? this.originCountryName,
  rank: rank ?? this.rank,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TopOriginLocationsResponseResultTop0 &&
          originCountryAlpha2 == other.originCountryAlpha2 &&
          originCountryName == other.originCountryName &&
          rank == other.rank &&
          value == other.value; } 
@override int get hashCode { return Object.hash(originCountryAlpha2, originCountryName, rank, value); } 
@override String toString() { return 'RadarGetAttacksLayer3TopOriginLocationsResponseResultTop0(originCountryAlpha2: $originCountryAlpha2, originCountryName: $originCountryName, rank: $rank, value: $value)'; } 
 }
