// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'error_model22.dart';import 'mq_consumer_response.dart';final class QueuesListConsumersResponse {const QueuesListConsumersResponse({this.errors, this.messages, this.success, this.result, });

factory QueuesListConsumersResponse.fromJson(Map<String, dynamic> json) { return QueuesListConsumersResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => ErrorModel22.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  success: json['success'] as bool?,
  result: (json['result'] as List<dynamic>?)?.map((e) => MqConsumerResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ErrorModel22>? errors;

final List<String>? messages;

/// Indicates if the API call was successful or not.
final bool? success;

final List<MqConsumerResponse>? result;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'messages': ?messages,
  'success': ?success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'errors', 'messages', 'success', 'result'}.contains(key)); } 
QueuesListConsumersResponse copyWith({List<ErrorModel22> Function()? errors, List<String> Function()? messages, bool Function()? success, List<MqConsumerResponse> Function()? result, }) { return QueuesListConsumersResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages != null ? messages() : this.messages,
  success: success != null ? success() : this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QueuesListConsumersResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages ?? const []), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'QueuesListConsumersResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
