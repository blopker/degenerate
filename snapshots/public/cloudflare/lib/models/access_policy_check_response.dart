// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_messages2.dart';import 'access_policy_check_response_result.dart';@immutable final class AccessPolicyCheckResponse {const AccessPolicyCheckResponse({required this.errors, required this.messages, required this.success, this.result, });

factory AccessPolicyCheckResponse.fromJson(Map<String, dynamic> json) { return AccessPolicyCheckResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? AccessPolicyCheckResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<AccessMessages2> errors;

final List<AccessMessages2> messages;

/// Whether the API call was successful.
final bool success;

final AccessPolicyCheckResponseResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AccessPolicyCheckResponse copyWith({List<AccessMessages2>? errors, List<AccessMessages2>? messages, bool? success, AccessPolicyCheckResponseResult Function()? result, }) { return AccessPolicyCheckResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyCheckResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'AccessPolicyCheckResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
