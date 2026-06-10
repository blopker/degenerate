// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_pages_for_an_account_list_custom_pages_response4xx_result_info.dart';import 'custom_pages_messages2.dart';@immutable final class CustomPagesForAnAccountListCustomPagesResponse4xx {const CustomPagesForAnAccountListCustomPagesResponse4xx({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory CustomPagesForAnAccountListCustomPagesResponse4xx.fromJson(Map<String, dynamic> json) { return CustomPagesForAnAccountListCustomPagesResponse4xx(
  errors: (json['errors'] as List<dynamic>).map((e) => CustomPagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CustomPagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? CustomPagesForAnAccountListCustomPagesResponse4xxResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] as Map<String, dynamic>?,
); }

final List<CustomPagesMessages2> errors;

final List<CustomPagesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final CustomPagesForAnAccountListCustomPagesResponse4xxResultInfo? resultInfo;

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
CustomPagesForAnAccountListCustomPagesResponse4xx copyWith({List<CustomPagesMessages2>? errors, List<CustomPagesMessages2>? messages, bool? success, CustomPagesForAnAccountListCustomPagesResponse4xxResultInfo Function()? resultInfo, Map<String, dynamic>? Function()? result, }) { return CustomPagesForAnAccountListCustomPagesResponse4xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomPagesForAnAccountListCustomPagesResponse4xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'CustomPagesForAnAccountListCustomPagesResponse4xx(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
