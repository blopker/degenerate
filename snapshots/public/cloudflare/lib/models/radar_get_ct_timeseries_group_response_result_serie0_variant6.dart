// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetCtTimeseriesGroupResponseResultSerie0Variant6 {const RadarGetCtTimeseriesGroupResponseResultSerie0Variant6({required this.negative, required this.positive, });

factory RadarGetCtTimeseriesGroupResponseResultSerie0Variant6.fromJson(Map<String, dynamic> json) { return RadarGetCtTimeseriesGroupResponseResultSerie0Variant6(
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
RadarGetCtTimeseriesGroupResponseResultSerie0Variant6 copyWith({List<String>? negative, List<String>? positive, }) { return RadarGetCtTimeseriesGroupResponseResultSerie0Variant6(
  negative: negative ?? this.negative,
  positive: positive ?? this.positive,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtTimeseriesGroupResponseResultSerie0Variant6 &&
          listEquals(negative, other.negative) &&
          listEquals(positive, other.positive); } 
@override int get hashCode { return Object.hash(Object.hashAll(negative), Object.hashAll(positive)); } 
@override String toString() { return 'RadarGetCtTimeseriesGroupResponseResultSerie0Variant6(negative: $negative, positive: $positive)'; } 
 }
