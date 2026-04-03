// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'snippets_message.dart';import 'snippets_result_info.dart';import 'snippets_snippet.dart';@immutable final class ListZoneSnippetsResponse {const ListZoneSnippetsResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory ListZoneSnippetsResponse.fromJson(Map<String, dynamic> json) { return ListZoneSnippetsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SnippetsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => SnippetsSnippet.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? SnippetsResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<Map<String,dynamic>> errors;

/// Contain warning messages.
final List<SnippetsMessage> messages;

/// Contain snippets.
final List<SnippetsSnippet> result;

final bool success;

final SnippetsResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ListZoneSnippetsResponse copyWith({List<Map<String,dynamic>>? errors, List<SnippetsMessage>? messages, List<SnippetsSnippet>? result, bool? success, SnippetsResultInfo Function()? resultInfo, }) { return ListZoneSnippetsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListZoneSnippetsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success, resultInfo); } 
@override String toString() { return 'ListZoneSnippetsResponse(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
