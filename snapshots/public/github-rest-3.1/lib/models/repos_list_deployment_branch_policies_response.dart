// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deployment_branch_policy.dart';final class ReposListDeploymentBranchPoliciesResponse {const ReposListDeploymentBranchPoliciesResponse({required this.totalCount, required this.branchPolicies, });

factory ReposListDeploymentBranchPoliciesResponse.fromJson(Map<String, dynamic> json) { return ReposListDeploymentBranchPoliciesResponse(
  totalCount: (json['total_count'] as num).toInt(),
  branchPolicies: (json['branch_policies'] as List<dynamic>).map((e) => DeploymentBranchPolicy.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The number of deployment branch policies for the environment.
final int totalCount;

final List<DeploymentBranchPolicy> branchPolicies;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'branch_policies': branchPolicies.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('branch_policies'); } 
ReposListDeploymentBranchPoliciesResponse copyWith({int? totalCount, List<DeploymentBranchPolicy>? branchPolicies, }) { return ReposListDeploymentBranchPoliciesResponse(
  totalCount: totalCount ?? this.totalCount,
  branchPolicies: branchPolicies ?? this.branchPolicies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposListDeploymentBranchPoliciesResponse &&
          totalCount == other.totalCount &&
          listEquals(branchPolicies, other.branchPolicies); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(branchPolicies)); } 
@override String toString() { return 'ReposListDeploymentBranchPoliciesResponse(totalCount: $totalCount, branchPolicies: $branchPolicies)'; } 
 }
