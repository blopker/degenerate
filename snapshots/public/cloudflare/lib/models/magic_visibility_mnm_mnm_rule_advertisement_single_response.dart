// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_visibility_mnm_mnm_rule_advertisable_response.dart';final class MagicVisibilityMnmMnmRuleAdvertisementSingleResponse {const MagicVisibilityMnmMnmRuleAdvertisementSingleResponse({this.result});

factory MagicVisibilityMnmMnmRuleAdvertisementSingleResponse.fromJson(Map<String, dynamic> json) { return MagicVisibilityMnmMnmRuleAdvertisementSingleResponse(
  result: json['result'] != null ? MagicVisibilityMnmMnmRuleAdvertisableResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicVisibilityMnmMnmRuleAdvertisableResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicVisibilityMnmMnmRuleAdvertisementSingleResponse copyWith({MagicVisibilityMnmMnmRuleAdvertisableResponse Function()? result}) { return MagicVisibilityMnmMnmRuleAdvertisementSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityMnmMnmRuleAdvertisementSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicVisibilityMnmMnmRuleAdvertisementSingleResponse(result: $result)'; } 
 }
