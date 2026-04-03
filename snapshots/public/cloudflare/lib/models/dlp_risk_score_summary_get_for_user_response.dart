// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_risk_events.dart';@immutable final class DlpRiskScoreSummaryGetForUserResponse {const DlpRiskScoreSummaryGetForUserResponse({this.result});

factory DlpRiskScoreSummaryGetForUserResponse.fromJson(Map<String, dynamic> json) { return DlpRiskScoreSummaryGetForUserResponse(
  result: json['result'] != null ? DlpRiskEvents.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpRiskEvents? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpRiskScoreSummaryGetForUserResponse copyWith({DlpRiskEvents Function()? result}) { return DlpRiskScoreSummaryGetForUserResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpRiskScoreSummaryGetForUserResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpRiskScoreSummaryGetForUserResponse(result: $result)'; } 
 }
