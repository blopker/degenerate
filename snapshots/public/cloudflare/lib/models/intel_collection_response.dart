// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_collection_response_result.dart';import 'intel_messages2.dart';import 'intel_result_info.dart';@immutable final class IntelCollectionResponse {const IntelCollectionResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory IntelCollectionResponse.fromJson(Map<String, dynamic> json) { return IntelCollectionResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => IntelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => IntelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => IntelCollectionResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? IntelResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<IntelMessages2> errors;

final List<IntelMessages2> messages;

final List<IntelCollectionResponseResult> result;

/// Whether the API call was successful.
final bool success;

final IntelResultInfo? resultInfo;

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
IntelCollectionResponse copyWith({List<IntelMessages2>? errors, List<IntelMessages2>? messages, List<IntelCollectionResponseResult>? result, bool? success, IntelResultInfo? Function()? resultInfo, }) { return IntelCollectionResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelCollectionResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success, resultInfo); } 
@override String toString() { return 'IntelCollectionResponse(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
