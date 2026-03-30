// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'logcontrol_messages2.dart';final class DeleteAccountsAccountIdLogsControlCmbConfigResponse {const DeleteAccountsAccountIdLogsControlCmbConfigResponse({required this.errors, required this.messages, required this.success, this.result, });

factory DeleteAccountsAccountIdLogsControlCmbConfigResponse.fromJson(Map<String, dynamic> json) { return DeleteAccountsAccountIdLogsControlCmbConfigResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => LogcontrolMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LogcontrolMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final List<LogcontrolMessages2> errors;

final List<LogcontrolMessages2> messages;

/// Whether the API call was successful.
final bool success;

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DeleteAccountsAccountIdLogsControlCmbConfigResponse copyWith({List<LogcontrolMessages2>? errors, List<LogcontrolMessages2>? messages, bool? success, Map<String, dynamic>? Function()? result, }) { return DeleteAccountsAccountIdLogsControlCmbConfigResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteAccountsAccountIdLogsControlCmbConfigResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DeleteAccountsAccountIdLogsControlCmbConfigResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
