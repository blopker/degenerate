// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_messages2.dart';import 'intel_result_info.dart';import 'response_collection24_result.dart';@immutable final class ResponseCollection24 {const ResponseCollection24({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory ResponseCollection24.fromJson(Map<String, dynamic> json) { return ResponseCollection24(
  errors: (json['errors'] as List<dynamic>).map((e) => IntelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => IntelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => v as Map<String, dynamic>,)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? IntelResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<IntelMessages2> errors;

final List<IntelMessages2> messages;

final List<ResponseCollection24Result>? result;

/// Whether the API call was successful.
final bool success;

final IntelResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCollection24 copyWith({List<IntelMessages2>? errors, List<IntelMessages2>? messages, List<ResponseCollection24Result>? Function()? result, bool? success, IntelResultInfo Function()? resultInfo, }) { return ResponseCollection24(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection24 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result ?? const []), success, resultInfo); } 
@override String toString() { return 'ResponseCollection24(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
