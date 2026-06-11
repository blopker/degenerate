// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'page_shield_messages2.dart';import 'page_shield_policy_with_id.dart';import 'page_shield_result_info.dart';@immutable final class PageShieldListZonePoliciesResponse {const PageShieldListZonePoliciesResponse({required this.success, required this.resultInfo, required this.result, this.errors, this.messages, });

factory PageShieldListZonePoliciesResponse.fromJson(Map<String, dynamic> json) { return PageShieldListZonePoliciesResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => PageShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => PageShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: PageShieldResultInfo.fromJson(json['result_info'] as Map<String, dynamic>),
  result: (json['result'] as List<dynamic>).map((e) => PageShieldPolicyWithId.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PageShieldMessages2>? errors;

final List<PageShieldMessages2>? messages;

/// Whether the API call was successful
final bool success;

final PageShieldResultInfo resultInfo;

final List<PageShieldPolicyWithId> result;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  if (messages != null) 'messages': messages?.map((e) => e.toJson()).toList(),
  'success': success,
  'result_info': resultInfo.toJson(),
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result_info') &&
      json.containsKey('result'); } 
PageShieldListZonePoliciesResponse copyWith({List<PageShieldMessages2> Function()? errors, List<PageShieldMessages2> Function()? messages, bool? success, PageShieldResultInfo? resultInfo, List<PageShieldPolicyWithId>? result, }) { return PageShieldListZonePoliciesResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages != null ? messages() : this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo ?? this.resultInfo,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldListZonePoliciesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages ?? const []), success, resultInfo, Object.hashAll(result)); } 
@override String toString() { return 'PageShieldListZonePoliciesResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
