// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_messages2.dart';import 'response_collection23_result_info.dart';final class ResponseCollection23 {const ResponseCollection23({required this.errors, required this.messages, required this.success, this.resultInfo, });

factory ResponseCollection23.fromJson(Map<String, dynamic> json) { return ResponseCollection23(
  errors: (json['errors'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ResponseCollection23ResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<InfraMessages2> errors;

final List<InfraMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ResponseCollection23ResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCollection23 copyWith({List<InfraMessages2>? errors, List<InfraMessages2>? messages, bool? success, ResponseCollection23ResultInfo Function()? resultInfo, }) { return ResponseCollection23(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection23 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo); } 
@override String toString() { return 'ResponseCollection23(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo)'; } 
 }
