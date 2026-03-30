// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'security_center_messages2.dart';final class GetSecurityCenterIssueTypesResponse {const GetSecurityCenterIssueTypesResponse({required this.errors, required this.messages, required this.success, this.result, });

factory GetSecurityCenterIssueTypesResponse.fromJson(Map<String, dynamic> json) { return GetSecurityCenterIssueTypesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => SecurityCenterMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SecurityCenterMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<SecurityCenterMessages2> errors;

final List<SecurityCenterMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<String>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
GetSecurityCenterIssueTypesResponse copyWith({List<SecurityCenterMessages2>? errors, List<SecurityCenterMessages2>? messages, bool? success, List<String> Function()? result, }) { return GetSecurityCenterIssueTypesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSecurityCenterIssueTypesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'GetSecurityCenterIssueTypesResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
