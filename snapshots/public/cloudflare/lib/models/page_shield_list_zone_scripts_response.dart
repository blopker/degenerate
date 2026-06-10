// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'page_shield_messages2.dart';import 'page_shield_result_info.dart';import 'page_shield_script.dart';@immutable final class PageShieldListZoneScriptsResponse {const PageShieldListZoneScriptsResponse({required this.success, required this.resultInfo, required this.result, this.errors, this.messages, });

factory PageShieldListZoneScriptsResponse.fromJson(Map<String, dynamic> json) { return PageShieldListZoneScriptsResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => PageShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => PageShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: PageShieldResultInfo.fromJson(json['result_info'] as Map<String, dynamic>),
  result: (json['result'] as List<dynamic>).map((e) => PageShieldScript.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PageShieldMessages2>? errors;

final List<PageShieldMessages2>? messages;

/// Whether the API call was successful
final bool success;

final PageShieldResultInfo resultInfo;

final List<PageShieldScript> result;

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
PageShieldListZoneScriptsResponse copyWith({List<PageShieldMessages2> Function()? errors, List<PageShieldMessages2> Function()? messages, bool? success, PageShieldResultInfo? resultInfo, List<PageShieldScript>? result, }) { return PageShieldListZoneScriptsResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages != null ? messages() : this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo ?? this.resultInfo,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldListZoneScriptsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages ?? const []), success, resultInfo, Object.hashAll(result)); } 
@override String toString() { return 'PageShieldListZoneScriptsResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
