// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_policy_link.dart';import 'access_app_req_embedded_policies_policies.dart';import 'access_base_policy_req.dart';import 'access_schemas_uuid.dart';final class AccessAppReqEmbeddedPolicies {const AccessAppReqEmbeddedPolicies({this.policies});

factory AccessAppReqEmbeddedPolicies.fromJson(Map<String, dynamic> json) { return AccessAppReqEmbeddedPolicies(
  policies: (json['policies'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => AccessAppPolicyLink.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasUuid.fromJson(v as String), fromC: (v) => AccessBasePolicyReq.fromJson(v as Map<String, dynamic>),)).toList(),
); }

/// The policies that Access applies to the application, in ascending order of precedence. Items can reference existing policies or create new policies exclusive to the application.
final List<AccessAppReqEmbeddedPoliciesPolicies>? policies;

Map<String, dynamic> toJson() { return {
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessAppReqEmbeddedPolicies copyWith({List<AccessAppReqEmbeddedPoliciesPolicies> Function()? policies}) { return AccessAppReqEmbeddedPolicies(
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppReqEmbeddedPolicies &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hashAll(policies ?? const []).hashCode; } 
@override String toString() { return 'AccessAppReqEmbeddedPolicies(policies: $policies)'; } 
 }
