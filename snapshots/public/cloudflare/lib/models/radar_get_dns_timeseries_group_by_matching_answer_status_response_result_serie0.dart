// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseResultSerie0 {const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseResultSerie0({required this.negative, required this.positive, });

factory RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseResultSerie0(
  negative: (json['NEGATIVE'] as List<dynamic>).map((e) => e as String).toList(),
  positive: (json['POSITIVE'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> negative;

final List<String> positive;

Map<String, dynamic> toJson() { return {
  'NEGATIVE': negative,
  'POSITIVE': positive,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('NEGATIVE') &&
      json.containsKey('POSITIVE'); } 
RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseResultSerie0 copyWith({List<String>? negative, List<String>? positive, }) { return RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseResultSerie0(
  negative: negative ?? this.negative,
  positive: positive ?? this.positive,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseResultSerie0 &&
          listEquals(negative, other.negative) &&
          listEquals(positive, other.positive); } 
@override int get hashCode { return Object.hash(Object.hashAll(negative), Object.hashAll(positive)); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseResultSerie0(negative: $negative, positive: $positive)'; } 
 }
