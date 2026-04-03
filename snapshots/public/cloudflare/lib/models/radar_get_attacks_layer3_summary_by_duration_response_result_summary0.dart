// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3SummaryByDurationResponseResultSummary0 {const RadarGetAttacksLayer3SummaryByDurationResponseResultSummary0({required this.$1HourTo3Hours, required this.$10MinsTo20Mins, required this.$20MinsTo40Mins, required this.$40MinsTo1Hour, required this.over3Hours, required this.under10Mins, });

factory RadarGetAttacksLayer3SummaryByDurationResponseResultSummary0.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryByDurationResponseResultSummary0(
  $1HourTo3Hours: json['_1_HOUR_TO_3_HOURS'] as String,
  $10MinsTo20Mins: json['_10_MINS_TO_20_MINS'] as String,
  $20MinsTo40Mins: json['_20_MINS_TO_40_MINS'] as String,
  $40MinsTo1Hour: json['_40_MINS_TO_1_HOUR'] as String,
  over3Hours: json['OVER_3_HOURS'] as String,
  under10Mins: json['UNDER_10_MINS'] as String,
); }

/// A numeric string.
final String $1HourTo3Hours;

/// A numeric string.
final String $10MinsTo20Mins;

/// A numeric string.
final String $20MinsTo40Mins;

/// A numeric string.
final String $40MinsTo1Hour;

/// A numeric string.
final String over3Hours;

/// A numeric string.
final String under10Mins;

Map<String, dynamic> toJson() { return {
  '_1_HOUR_TO_3_HOURS': $1HourTo3Hours,
  '_10_MINS_TO_20_MINS': $10MinsTo20Mins,
  '_20_MINS_TO_40_MINS': $20MinsTo40Mins,
  '_40_MINS_TO_1_HOUR': $40MinsTo1Hour,
  'OVER_3_HOURS': over3Hours,
  'UNDER_10_MINS': under10Mins,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('_1_HOUR_TO_3_HOURS') && json['_1_HOUR_TO_3_HOURS'] is String &&
      json.containsKey('_10_MINS_TO_20_MINS') && json['_10_MINS_TO_20_MINS'] is String &&
      json.containsKey('_20_MINS_TO_40_MINS') && json['_20_MINS_TO_40_MINS'] is String &&
      json.containsKey('_40_MINS_TO_1_HOUR') && json['_40_MINS_TO_1_HOUR'] is String &&
      json.containsKey('OVER_3_HOURS') && json['OVER_3_HOURS'] is String &&
      json.containsKey('UNDER_10_MINS') && json['UNDER_10_MINS'] is String; } 
RadarGetAttacksLayer3SummaryByDurationResponseResultSummary0 copyWith({String? $1HourTo3Hours, String? $10MinsTo20Mins, String? $20MinsTo40Mins, String? $40MinsTo1Hour, String? over3Hours, String? under10Mins, }) { return RadarGetAttacksLayer3SummaryByDurationResponseResultSummary0(
  $1HourTo3Hours: $1HourTo3Hours ?? this.$1HourTo3Hours,
  $10MinsTo20Mins: $10MinsTo20Mins ?? this.$10MinsTo20Mins,
  $20MinsTo40Mins: $20MinsTo40Mins ?? this.$20MinsTo40Mins,
  $40MinsTo1Hour: $40MinsTo1Hour ?? this.$40MinsTo1Hour,
  over3Hours: over3Hours ?? this.over3Hours,
  under10Mins: under10Mins ?? this.under10Mins,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryByDurationResponseResultSummary0 &&
          $1HourTo3Hours == other.$1HourTo3Hours &&
          $10MinsTo20Mins == other.$10MinsTo20Mins &&
          $20MinsTo40Mins == other.$20MinsTo40Mins &&
          $40MinsTo1Hour == other.$40MinsTo1Hour &&
          over3Hours == other.over3Hours &&
          under10Mins == other.under10Mins; } 
@override int get hashCode { return Object.hash($1HourTo3Hours, $10MinsTo20Mins, $20MinsTo40Mins, $40MinsTo1Hour, over3Hours, under10Mins); } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByDurationResponseResultSummary0(\$1HourTo3Hours: ${$1HourTo3Hours}, \$10MinsTo20Mins: ${$10MinsTo20Mins}, \$20MinsTo40Mins: ${$20MinsTo40Mins}, \$40MinsTo1Hour: ${$40MinsTo1Hour}, over3Hours: $over3Hours, under10Mins: $under10Mins)'; } 
 }
