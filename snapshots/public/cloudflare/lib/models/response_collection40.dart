// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_messages2.dart';import 'tunnel_result_info.dart';@immutable final class ResponseCollection40 {const ResponseCollection40({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory ResponseCollection40.fromJson(Map<String, dynamic> json) { return ResponseCollection40(
  errors: (json['errors'] as List<dynamic>).map((e) => TunnelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TunnelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>?)?.map((e) => e).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? TunnelResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<TunnelMessages2> errors;

final List<TunnelMessages2> messages;

final List<dynamic>? result;

/// Whether the API call was successful
final bool success;

final TunnelResultInfo? resultInfo;

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
ResponseCollection40 copyWith({List<TunnelMessages2>? errors, List<TunnelMessages2>? messages, List<dynamic>? Function()? result, bool? success, TunnelResultInfo Function()? resultInfo, }) { return ResponseCollection40(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection40 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result ?? const []), success, resultInfo); } 
@override String toString() { return 'ResponseCollection40(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
