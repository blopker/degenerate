// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_mnm_messages2.dart';import 'magic_visibility_mnm_result_info.dart';final class ResponseCollection27 {const ResponseCollection27({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory ResponseCollection27.fromJson(Map<String, dynamic> json) { return ResponseCollection27(
  errors: (json['errors'] as List<dynamic>).map((e) => MagicVisibilityMnmMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => MagicVisibilityMnmMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>?)?.map((e) => e).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? MagicVisibilityMnmResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<MagicVisibilityMnmMessages2> errors;

final List<MagicVisibilityMnmMessages2> messages;

final List<dynamic>? result;

/// Whether the API call was successful
final bool success;

final MagicVisibilityMnmResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCollection27 copyWith({List<MagicVisibilityMnmMessages2>? errors, List<MagicVisibilityMnmMessages2>? messages, List<dynamic>? Function()? result, bool? success, MagicVisibilityMnmResultInfo Function()? resultInfo, }) { return ResponseCollection27(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection27 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result ?? const []), success, resultInfo); } 
@override String toString() { return 'ResponseCollection27(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
