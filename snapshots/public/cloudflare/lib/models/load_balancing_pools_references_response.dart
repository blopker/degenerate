// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_messages2.dart';import 'load_balancing_pools_references_response_result.dart';final class LoadBalancingPoolsReferencesResponse {const LoadBalancingPoolsReferencesResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory LoadBalancingPoolsReferencesResponse.fromJson(Map<String, dynamic> json) { return LoadBalancingPoolsReferencesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>).map((e) => LoadBalancingPoolsReferencesResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<LoadBalancingMessages2> errors;

final List<LoadBalancingMessages2> messages;

/// Whether the API call was successful.
final bool success;

/// List of resources that reference a given pool.
final List<LoadBalancingPoolsReferencesResponseResult> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
LoadBalancingPoolsReferencesResponse copyWith({List<LoadBalancingMessages2>? errors, List<LoadBalancingMessages2>? messages, bool? success, List<LoadBalancingPoolsReferencesResponseResult>? result, }) { return LoadBalancingPoolsReferencesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingPoolsReferencesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result)); } 
@override String toString() { return 'LoadBalancingPoolsReferencesResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
