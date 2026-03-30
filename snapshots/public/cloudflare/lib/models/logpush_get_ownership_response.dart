// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'logpush_get_ownership_response_result.dart';import 'logpush_messages2.dart';final class LogpushGetOwnershipResponse {const LogpushGetOwnershipResponse({required this.errors, required this.messages, required this.success, this.result, });

factory LogpushGetOwnershipResponse.fromJson(Map<String, dynamic> json) { return LogpushGetOwnershipResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => LogpushMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LogpushMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? LogpushGetOwnershipResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<LogpushMessages2> errors;

final List<LogpushMessages2> messages;

/// Whether the API call was successful.
final bool success;

final LogpushGetOwnershipResponseResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
LogpushGetOwnershipResponse copyWith({List<LogpushMessages2>? errors, List<LogpushMessages2>? messages, bool? success, LogpushGetOwnershipResponseResult? Function()? result, }) { return LogpushGetOwnershipResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogpushGetOwnershipResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'LogpushGetOwnershipResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
