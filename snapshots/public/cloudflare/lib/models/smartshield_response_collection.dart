// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_healthchecks.dart';import 'smartshield_messages2.dart';import 'smartshield_result_info.dart';@immutable final class SmartshieldResponseCollection {const SmartshieldResponseCollection({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory SmartshieldResponseCollection.fromJson(Map<String, dynamic> json) { return SmartshieldResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => SmartshieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SmartshieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => SmartshieldHealthchecks.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? SmartshieldResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<SmartshieldMessages2> errors;

final List<SmartshieldMessages2> messages;

final List<SmartshieldHealthchecks> result;

/// Whether the API call was successful.
final bool success;

final SmartshieldResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
SmartshieldResponseCollection copyWith({List<SmartshieldMessages2>? errors, List<SmartshieldMessages2>? messages, List<SmartshieldHealthchecks>? result, bool? success, SmartshieldResultInfo Function()? resultInfo, }) { return SmartshieldResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success, resultInfo); } 
@override String toString() { return 'SmartshieldResponseCollection(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
