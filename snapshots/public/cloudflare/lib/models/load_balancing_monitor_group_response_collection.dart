// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_messages2.dart';import 'load_balancing_monitor_group.dart';import 'load_balancing_result_info.dart';final class LoadBalancingMonitorGroupResponseCollection {const LoadBalancingMonitorGroupResponseCollection({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory LoadBalancingMonitorGroupResponseCollection.fromJson(Map<String, dynamic> json) { return LoadBalancingMonitorGroupResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>).map((e) => LoadBalancingMonitorGroup.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? LoadBalancingResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<LoadBalancingMessages2> errors;

final List<LoadBalancingMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<LoadBalancingMonitorGroup> result;

final LoadBalancingResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
LoadBalancingMonitorGroupResponseCollection copyWith({List<LoadBalancingMessages2>? errors, List<LoadBalancingMessages2>? messages, bool? success, List<LoadBalancingMonitorGroup>? result, LoadBalancingResultInfo Function()? resultInfo, }) { return LoadBalancingMonitorGroupResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingMonitorGroupResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result), resultInfo); } 
@override String toString() { return 'LoadBalancingMonitorGroupResponseCollection(errors: $errors, messages: $messages, success: $success, result: $result, resultInfo: $resultInfo)'; } 
 }
