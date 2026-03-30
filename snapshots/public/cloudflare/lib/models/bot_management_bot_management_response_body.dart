// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_bm_subscription_config.dart';import 'bot_management_bot_fight_mode_config.dart';import 'bot_management_bot_management_response_body_result.dart';import 'bot_management_sbfm_definitely_config.dart';import 'bot_management_sbfm_likely_config.dart';final class BotManagementBotManagementResponseBody {const BotManagementBotManagementResponseBody({this.result});

factory BotManagementBotManagementResponseBody.fromJson(Map<String, dynamic> json) { return BotManagementBotManagementResponseBody(
  result: json['result'] != null ? OneOf4.parse(json['result'], fromA: (v) => BotManagementBotFightModeConfig.fromJson(v as Map<String, dynamic>), fromB: (v) => BotManagementSbfmDefinitelyConfig.fromJson(v as Map<String, dynamic>), fromC: (v) => BotManagementSbfmLikelyConfig.fromJson(v as Map<String, dynamic>), fromD: (v) => BotManagementBmSubscriptionConfig.fromJson(v as Map<String, dynamic>),) : null,
); }

final BotManagementBotManagementResponseBodyResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
BotManagementBotManagementResponseBody copyWith({BotManagementBotManagementResponseBodyResult Function()? result}) { return BotManagementBotManagementResponseBody(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementBotManagementResponseBody &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'BotManagementBotManagementResponseBody(result: $result)'; } 
 }
