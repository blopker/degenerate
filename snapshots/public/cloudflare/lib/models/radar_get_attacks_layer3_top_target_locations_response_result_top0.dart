// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3TopTargetLocationsResponseResultTop0 {const RadarGetAttacksLayer3TopTargetLocationsResponseResultTop0({required this.rank, required this.targetCountryAlpha2, required this.targetCountryName, required this.value, });

factory RadarGetAttacksLayer3TopTargetLocationsResponseResultTop0.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TopTargetLocationsResponseResultTop0(
  rank: (json['rank'] as num).toDouble(),
  targetCountryAlpha2: json['targetCountryAlpha2'] as String,
  targetCountryName: json['targetCountryName'] as String,
  value: json['value'] as String,
); }

final double rank;

final String targetCountryAlpha2;

final String targetCountryName;

final String value;

Map<String, dynamic> toJson() { return {
  'rank': rank,
  'targetCountryAlpha2': targetCountryAlpha2,
  'targetCountryName': targetCountryName,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('rank') && json['rank'] is num &&
      json.containsKey('targetCountryAlpha2') && json['targetCountryAlpha2'] is String &&
      json.containsKey('targetCountryName') && json['targetCountryName'] is String &&
      json.containsKey('value') && json['value'] is String; } 
RadarGetAttacksLayer3TopTargetLocationsResponseResultTop0 copyWith({double? rank, String? targetCountryAlpha2, String? targetCountryName, String? value, }) { return RadarGetAttacksLayer3TopTargetLocationsResponseResultTop0(
  rank: rank ?? this.rank,
  targetCountryAlpha2: targetCountryAlpha2 ?? this.targetCountryAlpha2,
  targetCountryName: targetCountryName ?? this.targetCountryName,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TopTargetLocationsResponseResultTop0 &&
          rank == other.rank &&
          targetCountryAlpha2 == other.targetCountryAlpha2 &&
          targetCountryName == other.targetCountryName &&
          value == other.value; } 
@override int get hashCode { return Object.hash(rank, targetCountryAlpha2, targetCountryName, value); } 
@override String toString() { return 'RadarGetAttacksLayer3TopTargetLocationsResponseResultTop0(rank: $rank, targetCountryAlpha2: $targetCountryAlpha2, targetCountryName: $targetCountryName, value: $value)'; } 
 }
