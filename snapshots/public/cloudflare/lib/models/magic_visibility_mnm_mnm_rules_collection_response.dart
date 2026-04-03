// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_mnm_mnm_rule.dart';@immutable final class MagicVisibilityMnmMnmRulesCollectionResponse {const MagicVisibilityMnmMnmRulesCollectionResponse({this.result});

factory MagicVisibilityMnmMnmRulesCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicVisibilityMnmMnmRulesCollectionResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => MagicVisibilityMnmMnmRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MagicVisibilityMnmMnmRule>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicVisibilityMnmMnmRulesCollectionResponse copyWith({List<MagicVisibilityMnmMnmRule>? Function()? result}) { return MagicVisibilityMnmMnmRulesCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityMnmMnmRulesCollectionResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'MagicVisibilityMnmMnmRulesCollectionResponse(result: $result)'; } 
 }
