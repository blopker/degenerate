// GENERATED CODE - DO NOT MODIFY BY HAND

/// The type of deployment branch policy for this environment. To allow all branches to deploy, set to `null`.
final class DeploymentBranchPolicySettings {const DeploymentBranchPolicySettings({required this.protectedBranches, required this.customBranchPolicies, });

factory DeploymentBranchPolicySettings.fromJson(Map<String, dynamic> json) { return DeploymentBranchPolicySettings(
  protectedBranches: json['protected_branches'] as bool,
  customBranchPolicies: json['custom_branch_policies'] as bool,
); }

/// Whether only branches with branch protection rules can deploy to this environment. If `protected_branches` is `true`, `custom_branch_policies` must be `false`; if `protected_branches` is `false`, `custom_branch_policies` must be `true`.
final bool protectedBranches;

/// Whether only branches that match the specified name patterns can deploy to this environment.  If `custom_branch_policies` is `true`, `protected_branches` must be `false`; if `custom_branch_policies` is `false`, `protected_branches` must be `true`.
final bool customBranchPolicies;

Map<String, dynamic> toJson() { return {
  'protected_branches': protectedBranches,
  'custom_branch_policies': customBranchPolicies,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('protected_branches') && json['protected_branches'] is bool &&
      json.containsKey('custom_branch_policies') && json['custom_branch_policies'] is bool; } 
DeploymentBranchPolicySettings copyWith({bool? protectedBranches, bool? customBranchPolicies, }) { return DeploymentBranchPolicySettings(
  protectedBranches: protectedBranches ?? this.protectedBranches,
  customBranchPolicies: customBranchPolicies ?? this.customBranchPolicies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeploymentBranchPolicySettings &&
          protectedBranches == other.protectedBranches &&
          customBranchPolicies == other.customBranchPolicies; } 
@override int get hashCode { return Object.hash(protectedBranches, customBranchPolicies); } 
@override String toString() { return 'DeploymentBranchPolicySettings(protectedBranches: $protectedBranches, customBranchPolicies: $customBranchPolicies)'; } 
 }
