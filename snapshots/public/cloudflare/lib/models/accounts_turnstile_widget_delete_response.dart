// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'turnstile_messages2.dart';import 'turnstile_widget_detail.dart';@immutable final class AccountsTurnstileWidgetDeleteResponse {const AccountsTurnstileWidgetDeleteResponse({required this.errors, required this.messages, required this.success, this.result, });

factory AccountsTurnstileWidgetDeleteResponse.fromJson(Map<String, dynamic> json) { return AccountsTurnstileWidgetDeleteResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => TurnstileMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TurnstileMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? TurnstileWidgetDetail.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<TurnstileMessages2> errors;

final List<TurnstileMessages2> messages;

/// Whether the API call was successful
final bool success;

final TurnstileWidgetDetail? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AccountsTurnstileWidgetDeleteResponse copyWith({List<TurnstileMessages2>? errors, List<TurnstileMessages2>? messages, bool? success, TurnstileWidgetDetail Function()? result, }) { return AccountsTurnstileWidgetDeleteResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountsTurnstileWidgetDeleteResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'AccountsTurnstileWidgetDeleteResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
