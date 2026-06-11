// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_messages2.dart';import 'dlp_risk_score_summary_get_response_result_info.dart';import 'dlp_risk_summary.dart';@immutable final class DlpRiskScoreSummaryGetResponse {const DlpRiskScoreSummaryGetResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory DlpRiskScoreSummaryGetResponse.fromJson(Map<String, dynamic> json) { return DlpRiskScoreSummaryGetResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DlpMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DlpMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? DlpRiskScoreSummaryGetResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] != null ? DlpRiskSummary.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DlpMessages2> errors;

final List<DlpMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DlpRiskScoreSummaryGetResponseResultInfo? resultInfo;

final DlpRiskSummary? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DlpRiskScoreSummaryGetResponse copyWith({List<DlpMessages2>? errors, List<DlpMessages2>? messages, bool? success, DlpRiskScoreSummaryGetResponseResultInfo Function()? resultInfo, DlpRiskSummary Function()? result, }) { return DlpRiskScoreSummaryGetResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpRiskScoreSummaryGetResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'DlpRiskScoreSummaryGetResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
