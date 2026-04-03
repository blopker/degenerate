// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_overrides_delete_a_waf_override_response_result.dart';@immutable final class WafOverridesDeleteAWafOverrideResponse {const WafOverridesDeleteAWafOverrideResponse({this.result});

factory WafOverridesDeleteAWafOverrideResponse.fromJson(Map<String, dynamic> json) { return WafOverridesDeleteAWafOverrideResponse(
  result: json['result'] != null ? WafOverridesDeleteAWafOverrideResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WafOverridesDeleteAWafOverrideResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WafOverridesDeleteAWafOverrideResponse copyWith({WafOverridesDeleteAWafOverrideResponseResult Function()? result}) { return WafOverridesDeleteAWafOverrideResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafOverridesDeleteAWafOverrideResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WafOverridesDeleteAWafOverrideResponse(result: $result)'; } 
 }
