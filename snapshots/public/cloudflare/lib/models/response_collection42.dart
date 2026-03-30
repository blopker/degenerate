// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_messages2.dart';import 'waf_managed_rules_result_info.dart';final class ResponseCollection42 {const ResponseCollection42({required this.errors, required this.messages, required this.success, this.resultInfo, });

factory ResponseCollection42.fromJson(Map<String, dynamic> json) { return ResponseCollection42(
  errors: (json['errors'] as List<dynamic>).map((e) => WafManagedRulesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WafManagedRulesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? WafManagedRulesResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<WafManagedRulesMessages2> errors;

final List<WafManagedRulesMessages2> messages;

/// Defines whether the API call was successful.
final bool success;

final WafManagedRulesResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCollection42 copyWith({List<WafManagedRulesMessages2>? errors, List<WafManagedRulesMessages2>? messages, bool? success, WafManagedRulesResultInfo Function()? resultInfo, }) { return ResponseCollection42(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection42 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo); } 
@override String toString() { return 'ResponseCollection42(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo)'; } 
 }
