// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_errors2.dart';import 'r2_result_info.dart';@immutable final class ResponseList {const ResponseList({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory ResponseList.fromJson(Map<String, dynamic> json) { return ResponseList(
  errors: (json['errors'] as List<dynamic>).map((e) => R2Errors2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
  result: json['result'] as Map<String, dynamic>,
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? R2ResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<R2Errors2> errors;

final List<String> messages;

final Map<String,dynamic> result;

/// Whether the API call was successful.
final bool success;

final R2ResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages,
  'result': result,
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseList copyWith({List<R2Errors2>? errors, List<String>? messages, Map<String,dynamic>? result, bool? success, R2ResultInfo Function()? resultInfo, }) { return ResponseList(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseList &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, resultInfo); } 
@override String toString() { return 'ResponseList(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
