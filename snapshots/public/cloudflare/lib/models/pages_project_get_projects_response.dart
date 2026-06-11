// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_messages2.dart';import 'pages_project.dart';import 'pages_project_get_projects_response_result_info.dart';@immutable final class PagesProjectGetProjectsResponse {const PagesProjectGetProjectsResponse({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory PagesProjectGetProjectsResponse.fromJson(Map<String, dynamic> json) { return PagesProjectGetProjectsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => PagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => PagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? PagesProjectGetProjectsResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>).map((e) => PagesProject.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PagesMessages2> errors;

final List<PagesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final PagesProjectGetProjectsResponseResultInfo? resultInfo;

final List<PagesProject> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
PagesProjectGetProjectsResponse copyWith({List<PagesMessages2>? errors, List<PagesMessages2>? messages, bool? success, PagesProjectGetProjectsResponseResultInfo Function()? resultInfo, List<PagesProject>? result, }) { return PagesProjectGetProjectsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesProjectGetProjectsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result)); } 
@override String toString() { return 'PagesProjectGetProjectsResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
