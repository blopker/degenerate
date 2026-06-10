// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_bm_subscription_config.dart';import 'bot_management_bot_fight_mode_config.dart';import 'bot_management_bot_management_response_body_result.dart';import 'bot_management_messages2.dart';import 'bot_management_sbfm_definitely_config.dart';import 'bot_management_sbfm_likely_config.dart';@immutable final class BotManagementBotManagementResponseBody {const BotManagementBotManagementResponseBody({required this.errors, required this.messages, required this.success, this.result, });

factory BotManagementBotManagementResponseBody.fromJson(Map<String, dynamic> json) { return BotManagementBotManagementResponseBody(
  errors: (json['errors'] as List<dynamic>).map((e) => BotManagementMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => BotManagementMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? OneOf4.parse(json['result'], fromA: (v) => BotManagementBotFightModeConfig.fromJson(v as Map<String, dynamic>), fromB: (v) => BotManagementSbfmDefinitelyConfig.fromJson(v as Map<String, dynamic>), fromC: (v) => BotManagementSbfmLikelyConfig.fromJson(v as Map<String, dynamic>), fromD: (v) => BotManagementBmSubscriptionConfig.fromJson(v as Map<String, dynamic>),) : null,
); }

final List<BotManagementMessages2> errors;

final List<BotManagementMessages2> messages;

/// Whether the API call was successful.
final bool success;

final BotManagementBotManagementResponseBodyResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
BotManagementBotManagementResponseBody copyWith({List<BotManagementMessages2>? errors, List<BotManagementMessages2>? messages, bool? success, BotManagementBotManagementResponseBodyResult Function()? result, }) { return BotManagementBotManagementResponseBody(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementBotManagementResponseBody &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'BotManagementBotManagementResponseBody(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
