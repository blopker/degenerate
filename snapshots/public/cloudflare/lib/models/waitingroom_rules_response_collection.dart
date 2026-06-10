// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_messages2.dart';import 'waitingroom_rule_result.dart';import 'waitingroom_rules_response_collection_result_info.dart';@immutable final class WaitingroomRulesResponseCollection {const WaitingroomRulesResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory WaitingroomRulesResponseCollection.fromJson(Map<String, dynamic> json) { return WaitingroomRulesResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => WaitingroomMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WaitingroomMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? WaitingroomRulesResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => WaitingroomRuleResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WaitingroomMessages2> errors;

final List<WaitingroomMessages2> messages;

/// Whether the API call was successful.
final bool success;

final WaitingroomRulesResponseCollectionResultInfo? resultInfo;

final List<WaitingroomRuleResult>? result;

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
WaitingroomRulesResponseCollection copyWith({List<WaitingroomMessages2>? errors, List<WaitingroomMessages2>? messages, bool? success, WaitingroomRulesResponseCollectionResultInfo Function()? resultInfo, List<WaitingroomRuleResult> Function()? result, }) { return WaitingroomRulesResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomRulesResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'WaitingroomRulesResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
