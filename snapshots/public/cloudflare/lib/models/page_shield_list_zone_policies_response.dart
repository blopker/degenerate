// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'page_shield_policy_with_id.dart';final class PageShieldListZonePoliciesResponse {const PageShieldListZonePoliciesResponse({required this.result});

factory PageShieldListZonePoliciesResponse.fromJson(Map<String, dynamic> json) { return PageShieldListZonePoliciesResponse(
  result: (json['result'] as List<dynamic>).map((e) => PageShieldPolicyWithId.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PageShieldPolicyWithId> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
PageShieldListZonePoliciesResponse copyWith({List<PageShieldPolicyWithId>? result}) { return PageShieldListZonePoliciesResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldListZonePoliciesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'PageShieldListZonePoliciesResponse(result: $result)'; } 
 }
