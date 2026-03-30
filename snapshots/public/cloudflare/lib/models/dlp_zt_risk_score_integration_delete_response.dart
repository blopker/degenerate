// GENERATED CODE - DO NOT MODIFY BY HAND

final class DlpZtRiskScoreIntegrationDeleteResponse {const DlpZtRiskScoreIntegrationDeleteResponse({this.result});

factory DlpZtRiskScoreIntegrationDeleteResponse.fromJson(Map<String, dynamic> json) { return DlpZtRiskScoreIntegrationDeleteResponse(
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpZtRiskScoreIntegrationDeleteResponse copyWith({Map<String, dynamic>? Function()? result}) { return DlpZtRiskScoreIntegrationDeleteResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpZtRiskScoreIntegrationDeleteResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpZtRiskScoreIntegrationDeleteResponse(result: $result)'; } 
 }
