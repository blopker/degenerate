// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_list_rules_response.dart';final class ListDexRulesResponse {const ListDexRulesResponse({this.result});

factory ListDexRulesResponse.fromJson(Map<String, dynamic> json) { return ListDexRulesResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringListRulesResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringListRulesResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ListDexRulesResponse copyWith({DigitalExperienceMonitoringListRulesResponse Function()? result}) { return ListDexRulesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListDexRulesResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ListDexRulesResponse(result: $result)'; } 
 }
