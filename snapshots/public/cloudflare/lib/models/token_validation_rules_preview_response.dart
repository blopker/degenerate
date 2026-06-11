// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_messages2.dart';import 'token_validation_rules_preview_response_result.dart';import 'token_validation_rules_preview_response_result_info.dart';@immutable final class TokenValidationRulesPreviewResponse {const TokenValidationRulesPreviewResponse({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory TokenValidationRulesPreviewResponse.fromJson(Map<String, dynamic> json) { return TokenValidationRulesPreviewResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? TokenValidationRulesPreviewResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: TokenValidationRulesPreviewResponseResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<ShieldMessages2> errors;

final List<ShieldMessages2> messages;

/// Whether the API call was successful.
final bool success;

final TokenValidationRulesPreviewResponseResultInfo? resultInfo;

final TokenValidationRulesPreviewResponseResult result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
TokenValidationRulesPreviewResponse copyWith({List<ShieldMessages2>? errors, List<ShieldMessages2>? messages, bool? success, TokenValidationRulesPreviewResponseResultInfo Function()? resultInfo, TokenValidationRulesPreviewResponseResult? result, }) { return TokenValidationRulesPreviewResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationRulesPreviewResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'TokenValidationRulesPreviewResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
