// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bots_response_result_bots.dart';@immutable final class RadarGetBotsResponseResult {const RadarGetBotsResponseResult({required this.bots});

factory RadarGetBotsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetBotsResponseResult(
  bots: (json['bots'] as List<dynamic>).map((e) => RadarGetBotsResponseResultBots.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RadarGetBotsResponseResultBots> bots;

Map<String, dynamic> toJson() { return {
  'bots': bots.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bots'); } 
RadarGetBotsResponseResult copyWith({List<RadarGetBotsResponseResultBots>? bots}) { return RadarGetBotsResponseResult(
  bots: bots ?? this.bots,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBotsResponseResult &&
          listEquals(bots, other.bots); } 
@override int get hashCode { return Object.hashAll(bots).hashCode; } 
@override String toString() { return 'RadarGetBotsResponseResult(bots: $bots)'; } 
 }
