// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'durable_objects_namespace_list_objects_response_result_info.dart';import 'workers_messages2.dart';import 'workers_object.dart';@immutable final class DurableObjectsNamespaceListObjectsResponse {const DurableObjectsNamespaceListObjectsResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory DurableObjectsNamespaceListObjectsResponse.fromJson(Map<String, dynamic> json) { return DurableObjectsNamespaceListObjectsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? DurableObjectsNamespaceListObjectsResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => WorkersObject.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersMessages2> errors;

final List<WorkersMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DurableObjectsNamespaceListObjectsResponseResultInfo? resultInfo;

final List<WorkersObject>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DurableObjectsNamespaceListObjectsResponse copyWith({List<WorkersMessages2>? errors, List<WorkersMessages2>? messages, bool? success, DurableObjectsNamespaceListObjectsResponseResultInfo Function()? resultInfo, List<WorkersObject> Function()? result, }) { return DurableObjectsNamespaceListObjectsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DurableObjectsNamespaceListObjectsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'DurableObjectsNamespaceListObjectsResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
