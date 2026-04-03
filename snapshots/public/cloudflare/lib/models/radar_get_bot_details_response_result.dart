// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bot_details_response_result_bot.dart';@immutable final class RadarGetBotDetailsResponseResult {const RadarGetBotDetailsResponseResult({required this.bot});

factory RadarGetBotDetailsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetBotDetailsResponseResult(
  bot: RadarGetBotDetailsResponseResultBot.fromJson(json['bot'] as Map<String, dynamic>),
); }

final RadarGetBotDetailsResponseResultBot bot;

Map<String, dynamic> toJson() { return {
  'bot': bot.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bot'); } 
RadarGetBotDetailsResponseResult copyWith({RadarGetBotDetailsResponseResultBot? bot}) { return RadarGetBotDetailsResponseResult(
  bot: bot ?? this.bot,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBotDetailsResponseResult &&
          bot == other.bot; } 
@override int get hashCode { return bot.hashCode; } 
@override String toString() { return 'RadarGetBotDetailsResponseResult(bot: $bot)'; } 
 }
