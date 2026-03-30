// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_risk_score_integration.dart';final class DlpZtRiskScoreIntegrationUpdateResponse {const DlpZtRiskScoreIntegrationUpdateResponse({this.result});

factory DlpZtRiskScoreIntegrationUpdateResponse.fromJson(Map<String, dynamic> json) { return DlpZtRiskScoreIntegrationUpdateResponse(
  result: json['result'] != null ? DlpRiskScoreIntegration.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpRiskScoreIntegration? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpZtRiskScoreIntegrationUpdateResponse copyWith({DlpRiskScoreIntegration Function()? result}) { return DlpZtRiskScoreIntegrationUpdateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpZtRiskScoreIntegrationUpdateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpZtRiskScoreIntegrationUpdateResponse(result: $result)'; } 
 }
