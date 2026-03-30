// GENERATED CODE - DO NOT MODIFY BY HAND

import 'page_shield_policy_with_id.dart';final class PageShieldGetZonePolicyResponse {const PageShieldGetZonePolicyResponse({required this.result});

factory PageShieldGetZonePolicyResponse.fromJson(Map<String, dynamic> json) { return PageShieldGetZonePolicyResponse(
  result: PageShieldPolicyWithId.fromJson(json['result'] as Map<String, dynamic>),
); }

final PageShieldPolicyWithId result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
PageShieldGetZonePolicyResponse copyWith({PageShieldPolicyWithId? result}) { return PageShieldGetZonePolicyResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldGetZonePolicyResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PageShieldGetZonePolicyResponse(result: $result)'; } 
 }
