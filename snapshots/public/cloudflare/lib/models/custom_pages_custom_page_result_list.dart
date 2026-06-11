// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_pages_custom_page.dart';import 'custom_pages_custom_page_result_list_result_info.dart';import 'custom_pages_messages2.dart';@immutable final class CustomPagesCustomPageResultList {const CustomPagesCustomPageResultList({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory CustomPagesCustomPageResultList.fromJson(Map<String, dynamic> json) { return CustomPagesCustomPageResultList(
  errors: (json['errors'] as List<dynamic>).map((e) => CustomPagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CustomPagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? CustomPagesCustomPageResultListResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => CustomPagesCustomPage.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<CustomPagesMessages2> errors;

final List<CustomPagesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final CustomPagesCustomPageResultListResultInfo? resultInfo;

final List<CustomPagesCustomPage>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CustomPagesCustomPageResultList copyWith({List<CustomPagesMessages2>? errors, List<CustomPagesMessages2>? messages, bool? success, CustomPagesCustomPageResultListResultInfo Function()? resultInfo, List<CustomPagesCustomPage> Function()? result, }) { return CustomPagesCustomPageResultList(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomPagesCustomPageResultList &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'CustomPagesCustomPageResultList(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
