// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_mnm_messages2.dart';import 'magic_visibility_mnm_mnm_rule_advertisable_response.dart';@immutable final class MagicVisibilityMnmMnmRuleAdvertisementSingleResponse {const MagicVisibilityMnmMnmRuleAdvertisementSingleResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory MagicVisibilityMnmMnmRuleAdvertisementSingleResponse.fromJson(Map<String, dynamic> json) { return MagicVisibilityMnmMnmRuleAdvertisementSingleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => MagicVisibilityMnmMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => MagicVisibilityMnmMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: MagicVisibilityMnmMnmRuleAdvertisableResponse.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<MagicVisibilityMnmMessages2> errors;

final List<MagicVisibilityMnmMessages2> messages;

final MagicVisibilityMnmMnmRuleAdvertisableResponse result;

/// Whether the API call was successful
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
MagicVisibilityMnmMnmRuleAdvertisementSingleResponse copyWith({List<MagicVisibilityMnmMessages2>? errors, List<MagicVisibilityMnmMessages2>? messages, MagicVisibilityMnmMnmRuleAdvertisableResponse? result, bool? success, }) { return MagicVisibilityMnmMnmRuleAdvertisementSingleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityMnmMnmRuleAdvertisementSingleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'MagicVisibilityMnmMnmRuleAdvertisementSingleResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
