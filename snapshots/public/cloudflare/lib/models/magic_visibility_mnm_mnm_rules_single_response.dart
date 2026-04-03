// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_mnm_mnm_rule.dart';@immutable final class MagicVisibilityMnmMnmRulesSingleResponse {const MagicVisibilityMnmMnmRulesSingleResponse({this.result});

factory MagicVisibilityMnmMnmRulesSingleResponse.fromJson(Map<String, dynamic> json) { return MagicVisibilityMnmMnmRulesSingleResponse(
  result: json['result'] != null ? MagicVisibilityMnmMnmRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicVisibilityMnmMnmRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicVisibilityMnmMnmRulesSingleResponse copyWith({MagicVisibilityMnmMnmRule Function()? result}) { return MagicVisibilityMnmMnmRulesSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityMnmMnmRulesSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicVisibilityMnmMnmRulesSingleResponse(result: $result)'; } 
 }
