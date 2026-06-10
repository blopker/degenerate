// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'alexandria_application.dart';import 'alexandria_get_applications_response_result_info.dart';import 'alexandria_messages2.dart';@immutable final class AlexandriaGetApplicationsResponse {const AlexandriaGetApplicationsResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory AlexandriaGetApplicationsResponse.fromJson(Map<String, dynamic> json) { return AlexandriaGetApplicationsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => AlexandriaMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AlexandriaMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? AlexandriaGetApplicationsResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => AlexandriaApplication.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AlexandriaMessages2> errors;

final List<AlexandriaMessages2> messages;

/// Indicates whether the API call was successful.
final bool success;

final AlexandriaGetApplicationsResponseResultInfo? resultInfo;

/// Returns the list of applications.
final List<AlexandriaApplication>? result;

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
AlexandriaGetApplicationsResponse copyWith({List<AlexandriaMessages2>? errors, List<AlexandriaMessages2>? messages, bool? success, AlexandriaGetApplicationsResponseResultInfo Function()? resultInfo, List<AlexandriaApplication> Function()? result, }) { return AlexandriaGetApplicationsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AlexandriaGetApplicationsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'AlexandriaGetApplicationsResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
