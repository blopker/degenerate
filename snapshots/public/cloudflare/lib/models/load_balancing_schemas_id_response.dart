// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_messages2.dart';import 'load_balancing_schemas_id_response_result.dart';@immutable final class LoadBalancingSchemasIdResponse {const LoadBalancingSchemasIdResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory LoadBalancingSchemasIdResponse.fromJson(Map<String, dynamic> json) { return LoadBalancingSchemasIdResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: LoadBalancingSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<LoadBalancingMessages2> errors;

final List<LoadBalancingMessages2> messages;

/// Whether the API call was successful.
final bool success;

final LoadBalancingSchemasIdResponseResult result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
LoadBalancingSchemasIdResponse copyWith({List<LoadBalancingMessages2>? errors, List<LoadBalancingMessages2>? messages, bool? success, LoadBalancingSchemasIdResponseResult? result, }) { return LoadBalancingSchemasIdResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingSchemasIdResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'LoadBalancingSchemasIdResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
