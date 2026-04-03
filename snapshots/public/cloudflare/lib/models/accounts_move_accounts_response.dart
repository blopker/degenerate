// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'message3.dart';import 'move_account_response.dart';@immutable final class AccountsMoveAccountsResponse {const AccountsMoveAccountsResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory AccountsMoveAccountsResponse.fromJson(Map<String, dynamic> json) { return AccountsMoveAccountsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Message3.fromJson(e as Map<String, dynamic>)).toList(),
  result: MoveAccountResponse.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<Map<String,dynamic>> errors;

final List<Message3> messages;

final MoveAccountResponse result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AccountsMoveAccountsResponse copyWith({List<Map<String,dynamic>>? errors, List<Message3>? messages, MoveAccountResponse? result, bool? success, }) { return AccountsMoveAccountsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountsMoveAccountsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'AccountsMoveAccountsResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
