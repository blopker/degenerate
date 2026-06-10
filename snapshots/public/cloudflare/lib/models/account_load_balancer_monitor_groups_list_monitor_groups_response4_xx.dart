// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_messages2.dart';import 'load_balancing_result_info.dart';@immutable final class AccountLoadBalancerMonitorGroupsListMonitorGroupsResponse4Xx {const AccountLoadBalancerMonitorGroupsListMonitorGroupsResponse4Xx({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory AccountLoadBalancerMonitorGroupsListMonitorGroupsResponse4Xx.fromJson(Map<String, dynamic> json) { return AccountLoadBalancerMonitorGroupsListMonitorGroupsResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] as Map<String, dynamic>?,
  resultInfo: json['result_info'] != null ? LoadBalancingResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<LoadBalancingMessages2> errors;

final List<LoadBalancingMessages2> messages;

/// Whether the API call was successful.
final bool success;

final Map<String,dynamic>? result;

final LoadBalancingResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': ?result,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
AccountLoadBalancerMonitorGroupsListMonitorGroupsResponse4Xx copyWith({List<LoadBalancingMessages2>? errors, List<LoadBalancingMessages2>? messages, bool? success, Map<String, dynamic>? Function()? result, LoadBalancingResultInfo Function()? resultInfo, }) { return AccountLoadBalancerMonitorGroupsListMonitorGroupsResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountLoadBalancerMonitorGroupsListMonitorGroupsResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result, resultInfo); } 
@override String toString() { return 'AccountLoadBalancerMonitorGroupsListMonitorGroupsResponse4Xx(errors: $errors, messages: $messages, success: $success, result: $result, resultInfo: $resultInfo)'; } 
 }
