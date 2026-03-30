// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_security_center_issues_response_result_variant1.dart';import 'security_center_messages2.dart';final class GetSecurityCenterIssuesResponse {const GetSecurityCenterIssuesResponse({required this.errors, required this.messages, required this.success, this.result, });

factory GetSecurityCenterIssuesResponse.fromJson(Map<String, dynamic> json) { return GetSecurityCenterIssuesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => SecurityCenterMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SecurityCenterMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? GetSecurityCenterIssuesResponseResultVariant1.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<SecurityCenterMessages2> errors;

final List<SecurityCenterMessages2> messages;

/// Whether the API call was successful.
final bool success;

final GetSecurityCenterIssuesResponseResultVariant1? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
GetSecurityCenterIssuesResponse copyWith({List<SecurityCenterMessages2>? errors, List<SecurityCenterMessages2>? messages, bool? success, GetSecurityCenterIssuesResponseResultVariant1 Function()? result, }) { return GetSecurityCenterIssuesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSecurityCenterIssuesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'GetSecurityCenterIssuesResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
