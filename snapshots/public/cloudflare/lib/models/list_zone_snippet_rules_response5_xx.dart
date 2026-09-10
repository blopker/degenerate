// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'snippets_message.dart';@immutable final class ListZoneSnippetRulesResponse5Xx {const ListZoneSnippetRulesResponse5Xx({required this.errors, required this.messages, required this.result, required this.success, });

factory ListZoneSnippetRulesResponse5Xx.fromJson(Map<String, dynamic> json) { return ListZoneSnippetRulesResponse5Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => SnippetsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SnippetsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
); }

/// Lists error messages.
final List<SnippetsMessage> errors;

/// Contain warning messages.
final List<SnippetsMessage> messages;

final Map<String,dynamic>? result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ListZoneSnippetRulesResponse5Xx copyWith({List<SnippetsMessage>? errors, List<SnippetsMessage>? messages, Map<String, dynamic>? Function()? result, bool? success, }) { return ListZoneSnippetRulesResponse5Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListZoneSnippetRulesResponse5Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ListZoneSnippetRulesResponse5Xx(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
