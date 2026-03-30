// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'healthchecks_messages2.dart';import 'healthchecks_result_info.dart';final class ResponseCollection19 {const ResponseCollection19({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory ResponseCollection19.fromJson(Map<String, dynamic> json) { return ResponseCollection19(
  errors: (json['errors'] as List<dynamic>).map((e) => HealthchecksMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => HealthchecksMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>?)?.map((e) => e).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? HealthchecksResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<HealthchecksMessages2> errors;

final List<HealthchecksMessages2> messages;

final List<dynamic>? result;

/// Whether the API call was successful.
final bool success;

final HealthchecksResultInfo? resultInfo;

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
ResponseCollection19 copyWith({List<HealthchecksMessages2>? errors, List<HealthchecksMessages2>? messages, List<dynamic>? Function()? result, bool? success, HealthchecksResultInfo Function()? resultInfo, }) { return ResponseCollection19(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection19 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result ?? const []), success, resultInfo); } 
@override String toString() { return 'ResponseCollection19(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
