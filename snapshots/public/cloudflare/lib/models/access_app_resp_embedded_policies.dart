// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_base_policy_resp.dart';/// The policies that Access applies to the application.
final class AccessAppRespEmbeddedPolicies {const AccessAppRespEmbeddedPolicies({this.policies});

factory AccessAppRespEmbeddedPolicies.fromJson(Map<String, dynamic> json) { return AccessAppRespEmbeddedPolicies(
  policies: (json['policies'] as List<dynamic>?)?.map((e) => AccessBasePolicyResp.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessBasePolicyResp>? policies;

Map<String, dynamic> toJson() { return {
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'policies'}.contains(key)); } 
AccessAppRespEmbeddedPolicies copyWith({List<AccessBasePolicyResp> Function()? policies}) { return AccessAppRespEmbeddedPolicies(
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppRespEmbeddedPolicies &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hashAll(policies ?? const []).hashCode; } 
@override String toString() { return 'AccessAppRespEmbeddedPolicies(policies: $policies)'; } 
 }
