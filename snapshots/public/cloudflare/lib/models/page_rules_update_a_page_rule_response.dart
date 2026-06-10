// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_page_rule.dart';import 'zones_schemas_messages2.dart';@immutable final class PageRulesUpdateAPageRuleResponse {const PageRulesUpdateAPageRuleResponse({required this.errors, required this.messages, required this.success, this.result, });

factory PageRulesUpdateAPageRuleResponse.fromJson(Map<String, dynamic> json) { return PageRulesUpdateAPageRuleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ZonesSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZonesSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? ZonesPageRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<ZonesSchemasMessages2> errors;

final List<ZonesSchemasMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ZonesPageRule? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
PageRulesUpdateAPageRuleResponse copyWith({List<ZonesSchemasMessages2>? errors, List<ZonesSchemasMessages2>? messages, bool? success, ZonesPageRule Function()? result, }) { return PageRulesUpdateAPageRuleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageRulesUpdateAPageRuleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'PageRulesUpdateAPageRuleResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
