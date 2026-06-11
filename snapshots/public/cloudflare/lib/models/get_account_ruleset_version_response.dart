// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_account_ruleset_version_response_result.dart';import 'rulesets_message.dart';@immutable final class GetAccountRulesetVersionResponse {const GetAccountRulesetVersionResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory GetAccountRulesetVersionResponse.fromJson(Map<String, dynamic> json) { return GetAccountRulesetVersionResponse(
  errors: json['errors'],
  messages: (json['messages'] as List<dynamic>).map((e) => RulesetsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: GetAccountRulesetVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'],
); }

final dynamic errors;

/// A list of warning messages.
final List<RulesetsMessage> messages;

final GetAccountRulesetVersionResponseResult result;

final dynamic success;

Map<String, dynamic> toJson() { return {
  'errors': ?errors,
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success'); } 
GetAccountRulesetVersionResponse copyWith({dynamic Function()? errors, List<RulesetsMessage>? messages, GetAccountRulesetVersionResponseResult? result, dynamic Function()? success, }) { return GetAccountRulesetVersionResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetAccountRulesetVersionResponse &&
          errors == other.errors &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(errors, Object.hashAll(messages), result, success); } 
@override String toString() { return 'GetAccountRulesetVersionResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
