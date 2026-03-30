// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_update_behaviors.dart';final class DlpRiskScoreBehaviorsPutResponse {const DlpRiskScoreBehaviorsPutResponse({this.result});

factory DlpRiskScoreBehaviorsPutResponse.fromJson(Map<String, dynamic> json) { return DlpRiskScoreBehaviorsPutResponse(
  result: json['result'] != null ? DlpUpdateBehaviors.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpUpdateBehaviors? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpRiskScoreBehaviorsPutResponse copyWith({DlpUpdateBehaviors Function()? result}) { return DlpRiskScoreBehaviorsPutResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpRiskScoreBehaviorsPutResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpRiskScoreBehaviorsPutResponse(result: $result)'; } 
 }
