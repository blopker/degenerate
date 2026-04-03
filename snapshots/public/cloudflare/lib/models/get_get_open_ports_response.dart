// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_get_open_ports_response_result.dart';@immutable final class GetGetOpenPortsResponse {const GetGetOpenPortsResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory GetGetOpenPortsResponse.fromJson(Map<String, dynamic> json) { return GetGetOpenPortsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
  result: GetGetOpenPortsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<String> errors;

final List<String> messages;

final GetGetOpenPortsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors,
  'messages': messages,
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
GetGetOpenPortsResponse copyWith({List<String>? errors, List<String>? messages, GetGetOpenPortsResponseResult? result, bool? success, }) { return GetGetOpenPortsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetGetOpenPortsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'GetGetOpenPortsResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
