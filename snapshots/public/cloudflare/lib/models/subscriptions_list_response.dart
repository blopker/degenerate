// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'error_model22.dart';import 'mq_event_subscription.dart';import 'subscriptions_list_response_result_info.dart';@immutable final class SubscriptionsListResponse {const SubscriptionsListResponse({this.errors, this.messages, this.success, this.result, this.resultInfo, });

factory SubscriptionsListResponse.fromJson(Map<String, dynamic> json) { return SubscriptionsListResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => ErrorModel22.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  success: json['success'] as bool?,
  result: (json['result'] as List<dynamic>?)?.map((e) => MqEventSubscription.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? SubscriptionsListResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<ErrorModel22>? errors;

final List<String>? messages;

/// Indicates if the API call was successful or not.
final bool? success;

final List<MqEventSubscription>? result;

final SubscriptionsListResponseResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'messages': ?messages,
  'success': ?success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'errors', 'messages', 'success', 'result', 'result_info'}.contains(key)); } 
SubscriptionsListResponse copyWith({List<ErrorModel22> Function()? errors, List<String> Function()? messages, bool Function()? success, List<MqEventSubscription> Function()? result, SubscriptionsListResponseResultInfo Function()? resultInfo, }) { return SubscriptionsListResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages != null ? messages() : this.messages,
  success: success != null ? success() : this.success,
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionsListResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages ?? const []), success, Object.hashAll(result ?? const []), resultInfo); } 
@override String toString() { return 'SubscriptionsListResponse(errors: $errors, messages: $messages, success: $success, result: $result, resultInfo: $resultInfo)'; } 
 }
