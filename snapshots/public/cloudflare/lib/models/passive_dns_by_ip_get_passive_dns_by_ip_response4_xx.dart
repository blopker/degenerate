// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_messages2.dart';import 'intel_schemas_result_info.dart';@immutable final class PassiveDnsByIpGetPassiveDnsByIpResponse4Xx {const PassiveDnsByIpGetPassiveDnsByIpResponse4Xx({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory PassiveDnsByIpGetPassiveDnsByIpResponse4Xx.fromJson(Map<String, dynamic> json) { return PassiveDnsByIpGetPassiveDnsByIpResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => IntelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => IntelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? IntelSchemasResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] as Map<String, dynamic>?,
); }

final List<IntelMessages2> errors;

final List<IntelMessages2> messages;

/// Whether the API call was successful.
final bool success;

final IntelSchemasResultInfo? resultInfo;

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
PassiveDnsByIpGetPassiveDnsByIpResponse4Xx copyWith({List<IntelMessages2>? errors, List<IntelMessages2>? messages, bool? success, IntelSchemasResultInfo Function()? resultInfo, Map<String, dynamic>? Function()? result, }) { return PassiveDnsByIpGetPassiveDnsByIpResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PassiveDnsByIpGetPassiveDnsByIpResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'PassiveDnsByIpGetPassiveDnsByIpResponse4Xx(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
