// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassResponseResultSerie0 {const RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassResponseResultSerie0({required this.bot, required this.human, required this.timestamps, });

factory RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassResponseResultSerie0(
  bot: (json['bot'] as List<dynamic>).map((e) => e as String).toList(),
  human: (json['human'] as List<dynamic>).map((e) => e as String).toList(),
  timestamps: (json['timestamps'] as List<dynamic>).map((e) => DateTime.parse(e as String)).toList(),
); }

final List<String> bot;

final List<String> human;

final List<DateTime> timestamps;

Map<String, dynamic> toJson() { return {
  'bot': bot,
  'human': human,
  'timestamps': timestamps.map((e) => e.toIso8601String()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bot') &&
      json.containsKey('human') &&
      json.containsKey('timestamps'); } 
RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassResponseResultSerie0 copyWith({List<String>? bot, List<String>? human, List<DateTime>? timestamps, }) { return RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassResponseResultSerie0(
  bot: bot ?? this.bot,
  human: human ?? this.human,
  timestamps: timestamps ?? this.timestamps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassResponseResultSerie0 &&
          listEquals(bot, other.bot) &&
          listEquals(human, other.human) &&
          listEquals(timestamps, other.timestamps); } 
@override int get hashCode { return Object.hash(Object.hashAll(bot), Object.hashAll(human), Object.hashAll(timestamps)); } 
@override String toString() { return 'RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassResponseResultSerie0(bot: $bot, human: $human, timestamps: $timestamps)'; } 
 }
