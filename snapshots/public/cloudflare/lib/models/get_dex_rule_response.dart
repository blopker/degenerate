// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_dex_rule.dart';@immutable final class GetDexRuleResponse {const GetDexRuleResponse({this.result});

factory GetDexRuleResponse.fromJson(Map<String, dynamic> json) { return GetDexRuleResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringDexRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringDexRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
GetDexRuleResponse copyWith({DigitalExperienceMonitoringDexRule Function()? result}) { return GetDexRuleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetDexRuleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'GetDexRuleResponse(result: $result)'; } 
 }
