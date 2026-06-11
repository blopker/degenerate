// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_components_schemas_id_response_result.dart';import 'load_balancing_messages2.dart';@immutable final class LoadBalancingComponentsSchemasIdResponse {const LoadBalancingComponentsSchemasIdResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory LoadBalancingComponentsSchemasIdResponse.fromJson(Map<String, dynamic> json) { return LoadBalancingComponentsSchemasIdResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: LoadBalancingComponentsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<LoadBalancingMessages2> errors;

final List<LoadBalancingMessages2> messages;

/// Whether the API call was successful.
final bool success;

final LoadBalancingComponentsSchemasIdResponseResult result;

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
LoadBalancingComponentsSchemasIdResponse copyWith({List<LoadBalancingMessages2>? errors, List<LoadBalancingMessages2>? messages, bool? success, LoadBalancingComponentsSchemasIdResponseResult? result, }) { return LoadBalancingComponentsSchemasIdResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingComponentsSchemasIdResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'LoadBalancingComponentsSchemasIdResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
