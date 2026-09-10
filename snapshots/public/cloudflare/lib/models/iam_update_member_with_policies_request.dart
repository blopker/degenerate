// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_create_member_policy_request.dart';@immutable final class IamUpdateMemberWithPoliciesRequest {const IamUpdateMemberWithPoliciesRequest({required this.policies});

factory IamUpdateMemberWithPoliciesRequest.fromJson(Map<String, dynamic> json) { return IamUpdateMemberWithPoliciesRequest(
  policies: (json['policies'] as List<dynamic>).map((e) => IamCreateMemberPolicyRequest.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Array of policies associated with this member.
final List<IamCreateMemberPolicyRequest> policies;

Map<String, dynamic> toJson() { return {
  'policies': policies.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('policies'); } 
IamUpdateMemberWithPoliciesRequest copyWith({List<IamCreateMemberPolicyRequest>? policies}) { return IamUpdateMemberWithPoliciesRequest(
  policies: policies ?? this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamUpdateMemberWithPoliciesRequest &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hashAll(policies).hashCode; } 
@override String toString() { return 'IamUpdateMemberWithPoliciesRequest(policies: $policies)'; } 
 }
