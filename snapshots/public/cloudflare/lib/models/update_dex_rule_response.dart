// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_dex_rule.dart';final class UpdateDexRuleResponse {const UpdateDexRuleResponse({this.result});

factory UpdateDexRuleResponse.fromJson(Map<String, dynamic> json) { return UpdateDexRuleResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringDexRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringDexRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
UpdateDexRuleResponse copyWith({DigitalExperienceMonitoringDexRule Function()? result}) { return UpdateDexRuleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateDexRuleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'UpdateDexRuleResponse(result: $result)'; } 
 }
