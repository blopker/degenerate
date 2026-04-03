// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_coded_message.dart';import 'mconn_connector_events_post_result.dart';@immutable final class MconnConnectorEventsPostSuccess {const MconnConnectorEventsPostSuccess({required this.success, required this.result, this.errors, this.messages, });

factory MconnConnectorEventsPostSuccess.fromJson(Map<String, dynamic> json) { return MconnConnectorEventsPostSuccess(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: MconnConnectorEventsPostResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<MconnCodedMessage>? errors;

final List<MconnCodedMessage>? messages;

final bool success;

final MconnConnectorEventsPostResult result;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  if (messages != null) 'messages': messages?.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
MconnConnectorEventsPostSuccess copyWith({List<MconnCodedMessage> Function()? errors, List<MconnCodedMessage> Function()? messages, bool? success, MconnConnectorEventsPostResult? result, }) { return MconnConnectorEventsPostSuccess(
  errors: errors != null ? errors() : this.errors,
  messages: messages != null ? messages() : this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnConnectorEventsPostSuccess &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages ?? const []), success, result); } 
@override String toString() { return 'MconnConnectorEventsPostSuccess(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
