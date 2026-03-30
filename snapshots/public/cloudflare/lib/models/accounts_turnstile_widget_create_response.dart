// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'turnstile_messages2.dart';import 'turnstile_result_info.dart';import 'turnstile_widget_detail.dart';final class AccountsTurnstileWidgetCreateResponse {const AccountsTurnstileWidgetCreateResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory AccountsTurnstileWidgetCreateResponse.fromJson(Map<String, dynamic> json) { return AccountsTurnstileWidgetCreateResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => TurnstileMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TurnstileMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? TurnstileResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] != null ? TurnstileWidgetDetail.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<TurnstileMessages2> errors;

final List<TurnstileMessages2> messages;

/// Whether the API call was successful
final bool success;

final TurnstileResultInfo? resultInfo;

final TurnstileWidgetDetail? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AccountsTurnstileWidgetCreateResponse copyWith({List<TurnstileMessages2>? errors, List<TurnstileMessages2>? messages, bool? success, TurnstileResultInfo Function()? resultInfo, TurnstileWidgetDetail Function()? result, }) { return AccountsTurnstileWidgetCreateResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountsTurnstileWidgetCreateResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'AccountsTurnstileWidgetCreateResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
