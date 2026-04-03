// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'security_center_messages2.dart';import 'security_center_value_counts_response_result_variant1.dart';@immutable final class SecurityCenterValueCountsResponse {const SecurityCenterValueCountsResponse({required this.errors, required this.messages, required this.success, this.result, });

factory SecurityCenterValueCountsResponse.fromJson(Map<String, dynamic> json) { return SecurityCenterValueCountsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => SecurityCenterMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SecurityCenterMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => SecurityCenterValueCountsResponseResultVariant1.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SecurityCenterMessages2> errors;

final List<SecurityCenterMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<SecurityCenterValueCountsResponseResultVariant1>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
SecurityCenterValueCountsResponse copyWith({List<SecurityCenterMessages2>? errors, List<SecurityCenterMessages2>? messages, bool? success, List<SecurityCenterValueCountsResponseResultVariant1> Function()? result, }) { return SecurityCenterValueCountsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecurityCenterValueCountsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'SecurityCenterValueCountsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
