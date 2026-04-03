// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_collection31_result_info.dart';import 'response_errors3.dart';import 'response_messages2.dart';import 'response_success.dart';@immutable final class ResponseCollection31 {const ResponseCollection31({required this.errors, required this.messages, required this.success, this.resultInfo, });

factory ResponseCollection31.fromJson(Map<String, dynamic> json) { return ResponseCollection31(
  errors: (json['errors'] as List<dynamic>).map((e) => ResponseErrors3.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ResponseMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: ResponseSuccess.fromJson(json['success'] as bool),
  resultInfo: json['result_info'] != null ? ResponseCollection31ResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<ResponseErrors3> errors;

final List<ResponseMessages2> messages;

final ResponseSuccess success;

final ResponseCollection31ResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success.toJson(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success'); } 
ResponseCollection31 copyWith({List<ResponseErrors3>? errors, List<ResponseMessages2>? messages, ResponseSuccess? success, ResponseCollection31ResultInfo Function()? resultInfo, }) { return ResponseCollection31(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection31 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo); } 
@override String toString() { return 'ResponseCollection31(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo)'; } 
 }
