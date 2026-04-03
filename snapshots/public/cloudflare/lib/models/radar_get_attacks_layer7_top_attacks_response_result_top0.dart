// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer7TopAttacksResponseResultTop0 {const RadarGetAttacksLayer7TopAttacksResponseResultTop0({required this.originCountryAlpha2, required this.originCountryName, required this.targetCountryAlpha2, required this.targetCountryName, required this.value, });

factory RadarGetAttacksLayer7TopAttacksResponseResultTop0.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TopAttacksResponseResultTop0(
  originCountryAlpha2: json['originCountryAlpha2'] as String,
  originCountryName: json['originCountryName'] as String,
  targetCountryAlpha2: json['targetCountryAlpha2'] as String,
  targetCountryName: json['targetCountryName'] as String,
  value: json['value'] as String,
); }

final String originCountryAlpha2;

final String originCountryName;

final String targetCountryAlpha2;

final String targetCountryName;

final String value;

Map<String, dynamic> toJson() { return {
  'originCountryAlpha2': originCountryAlpha2,
  'originCountryName': originCountryName,
  'targetCountryAlpha2': targetCountryAlpha2,
  'targetCountryName': targetCountryName,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('originCountryAlpha2') && json['originCountryAlpha2'] is String &&
      json.containsKey('originCountryName') && json['originCountryName'] is String &&
      json.containsKey('targetCountryAlpha2') && json['targetCountryAlpha2'] is String &&
      json.containsKey('targetCountryName') && json['targetCountryName'] is String &&
      json.containsKey('value') && json['value'] is String; } 
RadarGetAttacksLayer7TopAttacksResponseResultTop0 copyWith({String? originCountryAlpha2, String? originCountryName, String? targetCountryAlpha2, String? targetCountryName, String? value, }) { return RadarGetAttacksLayer7TopAttacksResponseResultTop0(
  originCountryAlpha2: originCountryAlpha2 ?? this.originCountryAlpha2,
  originCountryName: originCountryName ?? this.originCountryName,
  targetCountryAlpha2: targetCountryAlpha2 ?? this.targetCountryAlpha2,
  targetCountryName: targetCountryName ?? this.targetCountryName,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TopAttacksResponseResultTop0 &&
          originCountryAlpha2 == other.originCountryAlpha2 &&
          originCountryName == other.originCountryName &&
          targetCountryAlpha2 == other.targetCountryAlpha2 &&
          targetCountryName == other.targetCountryName &&
          value == other.value; } 
@override int get hashCode { return Object.hash(originCountryAlpha2, originCountryName, targetCountryAlpha2, targetCountryName, value); } 
@override String toString() { return 'RadarGetAttacksLayer7TopAttacksResponseResultTop0(originCountryAlpha2: $originCountryAlpha2, originCountryName: $originCountryName, targetCountryAlpha2: $targetCountryAlpha2, targetCountryName: $targetCountryName, value: $value)'; } 
 }
