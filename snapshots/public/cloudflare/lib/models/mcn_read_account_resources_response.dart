// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_error.dart';import 'mcn_resource_details.dart';import 'mcn_result_info.dart';@immutable final class McnReadAccountResourcesResponse {const McnReadAccountResourcesResponse({required this.messages, required this.success, required this.errors, required this.result, this.resultInfo, });

factory McnReadAccountResourcesResponse.fromJson(Map<String, dynamic> json) { return McnReadAccountResourcesResponse(
  messages: (json['messages'] as List<dynamic>).map((e) => McnError.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? McnResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => McnError.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => McnResourceDetails.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<McnError> messages;

final McnResultInfo? resultInfo;

final bool success;

final List<McnError> errors;

final List<McnResourceDetails> result;

Map<String, dynamic> toJson() { return {
  'messages': messages.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'success': success,
  'errors': errors.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('errors') &&
      json.containsKey('result'); } 
McnReadAccountResourcesResponse copyWith({List<McnError>? messages, McnResultInfo Function()? resultInfo, bool? success, List<McnError>? errors, List<McnResourceDetails>? result, }) { return McnReadAccountResourcesResponse(
  messages: messages ?? this.messages,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  success: success ?? this.success,
  errors: errors ?? this.errors,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnReadAccountResourcesResponse &&
          listEquals(messages, other.messages) &&
          resultInfo == other.resultInfo &&
          success == other.success &&
          listEquals(errors, other.errors) &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), resultInfo, success, Object.hashAll(errors), Object.hashAll(result)); } 
@override String toString() { return 'McnReadAccountResourcesResponse(messages: $messages, resultInfo: $resultInfo, success: $success, errors: $errors, result: $result)'; } 
 }
