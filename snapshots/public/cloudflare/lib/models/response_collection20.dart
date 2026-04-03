// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_messages2.dart';import 'hyperdrive_result_info.dart';@immutable final class ResponseCollection20 {const ResponseCollection20({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory ResponseCollection20.fromJson(Map<String, dynamic> json) { return ResponseCollection20(
  errors: (json['errors'] as List<dynamic>).map((e) => HyperdriveMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => HyperdriveMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>,
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? HyperdriveResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<HyperdriveMessages2> errors;

final List<HyperdriveMessages2> messages;

final Map<String,dynamic> result;

/// Return the status of the API call success.
final bool success;

final HyperdriveResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result,
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCollection20 copyWith({List<HyperdriveMessages2>? errors, List<HyperdriveMessages2>? messages, Map<String,dynamic>? result, bool? success, HyperdriveResultInfo Function()? resultInfo, }) { return ResponseCollection20(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection20 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, resultInfo); } 
@override String toString() { return 'ResponseCollection20(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
