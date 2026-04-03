// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_risk_score_integration.dart';@immutable final class DlpZtRiskScoreIntegrationListResponse {const DlpZtRiskScoreIntegrationListResponse({this.result});

factory DlpZtRiskScoreIntegrationListResponse.fromJson(Map<String, dynamic> json) { return DlpZtRiskScoreIntegrationListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DlpRiskScoreIntegration.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DlpRiskScoreIntegration>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpZtRiskScoreIntegrationListResponse copyWith({List<DlpRiskScoreIntegration> Function()? result}) { return DlpZtRiskScoreIntegrationListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpZtRiskScoreIntegrationListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DlpZtRiskScoreIntegrationListResponse(result: $result)'; } 
 }
