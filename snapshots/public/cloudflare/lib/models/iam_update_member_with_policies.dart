// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_create_member_policy.dart';final class IamUpdateMemberWithPolicies {const IamUpdateMemberWithPolicies({required this.policies});

factory IamUpdateMemberWithPolicies.fromJson(Map<String, dynamic> json) { return IamUpdateMemberWithPolicies(
  policies: (json['policies'] as List<dynamic>).map((e) => IamCreateMemberPolicy.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Array of policies associated with this member.
final List<IamCreateMemberPolicy> policies;

Map<String, dynamic> toJson() { return {
  'policies': policies.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('policies'); } 
IamUpdateMemberWithPolicies copyWith({List<IamCreateMemberPolicy>? policies}) { return IamUpdateMemberWithPolicies(
  policies: policies ?? this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamUpdateMemberWithPolicies &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hashAll(policies).hashCode; } 
@override String toString() { return 'IamUpdateMemberWithPolicies(policies: $policies)'; } 
 }
