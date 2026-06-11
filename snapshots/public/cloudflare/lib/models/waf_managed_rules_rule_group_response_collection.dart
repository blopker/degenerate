// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_messages2.dart';import 'waf_managed_rules_result_info.dart';import 'waf_managed_rules_schemas_group.dart';@immutable final class WafManagedRulesRuleGroupResponseCollection {const WafManagedRulesRuleGroupResponseCollection({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory WafManagedRulesRuleGroupResponseCollection.fromJson(Map<String, dynamic> json) { return WafManagedRulesRuleGroupResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => WafManagedRulesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WafManagedRulesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? WafManagedRulesResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>).map((e) => WafManagedRulesSchemasGroup.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WafManagedRulesMessages2> errors;

final List<WafManagedRulesMessages2> messages;

/// Defines whether the API call was successful.
final bool success;

final WafManagedRulesResultInfo? resultInfo;

final List<WafManagedRulesSchemasGroup> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
WafManagedRulesRuleGroupResponseCollection copyWith({List<WafManagedRulesMessages2>? errors, List<WafManagedRulesMessages2>? messages, bool? success, WafManagedRulesResultInfo Function()? resultInfo, List<WafManagedRulesSchemasGroup>? result, }) { return WafManagedRulesRuleGroupResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesRuleGroupResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result)); } 
@override String toString() { return 'WafManagedRulesRuleGroupResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
