// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_risk_score_integration.dart';final class DlpZtRiskScoreIntegrationCreateResponse {const DlpZtRiskScoreIntegrationCreateResponse({this.result});

factory DlpZtRiskScoreIntegrationCreateResponse.fromJson(Map<String, dynamic> json) { return DlpZtRiskScoreIntegrationCreateResponse(
  result: json['result'] != null ? DlpRiskScoreIntegration.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpRiskScoreIntegration? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpZtRiskScoreIntegrationCreateResponse copyWith({DlpRiskScoreIntegration Function()? result}) { return DlpZtRiskScoreIntegrationCreateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpZtRiskScoreIntegrationCreateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpZtRiskScoreIntegrationCreateResponse(result: $result)'; } 
 }
