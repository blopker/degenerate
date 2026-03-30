// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_risk_summary.dart';final class DlpRiskScoreSummaryGetResponse {const DlpRiskScoreSummaryGetResponse({this.result});

factory DlpRiskScoreSummaryGetResponse.fromJson(Map<String, dynamic> json) { return DlpRiskScoreSummaryGetResponse(
  result: json['result'] != null ? DlpRiskSummary.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpRiskSummary? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpRiskScoreSummaryGetResponse copyWith({DlpRiskSummary Function()? result}) { return DlpRiskScoreSummaryGetResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpRiskScoreSummaryGetResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpRiskScoreSummaryGetResponse(result: $result)'; } 
 }
