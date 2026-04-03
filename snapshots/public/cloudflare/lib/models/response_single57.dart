// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_single57_result.dart';import 'response_single57_result_info.dart';import 'web3_messages2.dart';@immutable final class ResponseSingle57 {const ResponseSingle57({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory ResponseSingle57.fromJson(Map<String, dynamic> json) { return ResponseSingle57(
  errors: (json['errors'] as List<dynamic>).map((e) => Web3Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Web3Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? OneOf2.parse(json['result_info'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,) : null,
); }

final List<Web3Messages2> errors;

final List<Web3Messages2> messages;

/// Provides the API response.
final ResponseSingle57Result result;

/// Specifies whether the API call was successful.
final bool success;

/// Provides the API response.
final ResponseSingle57ResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseSingle57 copyWith({List<Web3Messages2>? errors, List<Web3Messages2>? messages, ResponseSingle57Result? result, bool? success, ResponseSingle57ResultInfo Function()? resultInfo, }) { return ResponseSingle57(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingle57 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, resultInfo); } 
@override String toString() { return 'ResponseSingle57(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
