// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_database_response.dart';import 'd1_list_databases_response_result_info.dart';import 'd1_messages2.dart';final class D1ListDatabasesResponse {const D1ListDatabasesResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory D1ListDatabasesResponse.fromJson(Map<String, dynamic> json) { return D1ListDatabasesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => D1Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => D1Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => D1DatabaseResponse.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? D1ListDatabasesResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<D1Messages2> errors;

final List<D1Messages2> messages;

final List<D1DatabaseResponse> result;

/// Whether the API call was successful
final bool success;

final D1ListDatabasesResponseResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
D1ListDatabasesResponse copyWith({List<D1Messages2>? errors, List<D1Messages2>? messages, List<D1DatabaseResponse>? result, bool? success, D1ListDatabasesResponseResultInfo Function()? resultInfo, }) { return D1ListDatabasesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1ListDatabasesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success, resultInfo); } 
@override String toString() { return 'D1ListDatabasesResponse(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
