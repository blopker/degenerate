// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_analytics.dart';import 'load_balancing_messages2.dart';import 'load_balancing_result_info.dart';@immutable final class LoadBalancingComponentsSchemasResponseCollection {const LoadBalancingComponentsSchemasResponseCollection({required this.errors, required this.messages, required this.success, required this.resultInfo, required this.result, });

factory LoadBalancingComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return LoadBalancingComponentsSchemasResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: LoadBalancingResultInfo.fromJson(json['result_info'] as Map<String, dynamic>),
  result: (json['result'] as List<dynamic>).map((e) => LoadBalancingAnalytics.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<LoadBalancingMessages2> errors;

final List<LoadBalancingMessages2> messages;

/// Whether the API call was successful.
final bool success;

final LoadBalancingResultInfo resultInfo;

final List<LoadBalancingAnalytics> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result_info': resultInfo.toJson(),
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result_info') &&
      json.containsKey('result'); } 
LoadBalancingComponentsSchemasResponseCollection copyWith({List<LoadBalancingMessages2>? errors, List<LoadBalancingMessages2>? messages, bool? success, LoadBalancingResultInfo? resultInfo, List<LoadBalancingAnalytics>? result, }) { return LoadBalancingComponentsSchemasResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo ?? this.resultInfo,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingComponentsSchemasResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result)); } 
@override String toString() { return 'LoadBalancingComponentsSchemasResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
