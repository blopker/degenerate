// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_message.dart';/// A response object.
@immutable final class RulesetsResponse {const RulesetsResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory RulesetsResponse.fromJson(Map<String, dynamic> json) { return RulesetsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => RulesetsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => RulesetsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'],
  success: json['success'] as bool,
); }

/// A list of error messages.
final List<RulesetsMessage> errors;

/// A list of warning messages.
final List<RulesetsMessage> messages;

/// A result.
final dynamic result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RulesetsResponse copyWith({List<RulesetsMessage>? errors, List<RulesetsMessage>? messages, dynamic Function()? result, bool? success, }) { return RulesetsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'RulesetsResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
