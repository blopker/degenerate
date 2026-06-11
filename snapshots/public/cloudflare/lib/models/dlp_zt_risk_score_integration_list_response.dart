// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_messages2.dart';import 'dlp_risk_score_integration.dart';@immutable final class DlpZtRiskScoreIntegrationListResponse {const DlpZtRiskScoreIntegrationListResponse({required this.errors, required this.messages, required this.success, this.result, });

factory DlpZtRiskScoreIntegrationListResponse.fromJson(Map<String, dynamic> json) { return DlpZtRiskScoreIntegrationListResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DlpMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DlpMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => DlpRiskScoreIntegration.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DlpMessages2> errors;

final List<DlpMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<DlpRiskScoreIntegration>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DlpZtRiskScoreIntegrationListResponse copyWith({List<DlpMessages2>? errors, List<DlpMessages2>? messages, bool? success, List<DlpRiskScoreIntegration> Function()? result, }) { return DlpZtRiskScoreIntegrationListResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpZtRiskScoreIntegrationListResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'DlpZtRiskScoreIntegrationListResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
