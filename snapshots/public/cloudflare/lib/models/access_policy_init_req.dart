// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_base_policy_req.dart';import 'access_policy_init_req_policies.dart';final class AccessPolicyInitReq {const AccessPolicyInitReq({this.policies});

factory AccessPolicyInitReq.fromJson(Map<String, dynamic> json) { return AccessPolicyInitReq(
  policies: (json['policies'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => AccessBasePolicyReq.fromJson(v as Map<String, dynamic>), fromB: (v) => v as String,)).toList(),
); }

final List<AccessPolicyInitReqPolicies>? policies;

Map<String, dynamic> toJson() { return {
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'policies'}.contains(key)); } 
AccessPolicyInitReq copyWith({List<AccessPolicyInitReqPolicies> Function()? policies}) { return AccessPolicyInitReq(
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyInitReq &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hashAll(policies ?? const []).hashCode; } 
@override String toString() { return 'AccessPolicyInitReq(policies: $policies)'; } 
 }
