// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_risk_score_integration.dart';final class DlpZtRiskScoreIntegrationGetByReferenceIdResponse {const DlpZtRiskScoreIntegrationGetByReferenceIdResponse({this.result});

factory DlpZtRiskScoreIntegrationGetByReferenceIdResponse.fromJson(Map<String, dynamic> json) { return DlpZtRiskScoreIntegrationGetByReferenceIdResponse(
  result: json['result'] != null ? DlpRiskScoreIntegration.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpRiskScoreIntegration? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpZtRiskScoreIntegrationGetByReferenceIdResponse copyWith({DlpRiskScoreIntegration Function()? result}) { return DlpZtRiskScoreIntegrationGetByReferenceIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpZtRiskScoreIntegrationGetByReferenceIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpZtRiskScoreIntegrationGetByReferenceIdResponse(result: $result)'; } 
 }
