// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages32.dart';import 'result_info2.dart';@immutable final class RegistrarDomainsListDomainsResponse4Xx {const RegistrarDomainsListDomainsResponse4Xx({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory RegistrarDomainsListDomainsResponse4Xx.fromJson(Map<String, dynamic> json) { return RegistrarDomainsListDomainsResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => Messages32.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Messages32.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ResultInfo2.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<Messages32> errors;

final List<Messages32> messages;

final Map<String,dynamic>? result;

/// Whether the API call was successful
final bool success;

final ResultInfo2? resultInfo;

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
RegistrarDomainsListDomainsResponse4Xx copyWith({List<Messages32>? errors, List<Messages32>? messages, Map<String, dynamic>? Function()? result, bool? success, ResultInfo2 Function()? resultInfo, }) { return RegistrarDomainsListDomainsResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RegistrarDomainsListDomainsResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, resultInfo); } 
@override String toString() { return 'RegistrarDomainsListDomainsResponse4Xx(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
