// GENERATED CODE - DO NOT MODIFY BY HAND

/// Whether to set the branch as read-only. If this is true, users will not be able to push to the branch.
final class BranchProtectionLockBranch {const BranchProtectionLockBranch({this.enabled = false});

factory BranchProtectionLockBranch.fromJson(Map<String, dynamic> json) { return BranchProtectionLockBranch(
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : false,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BranchProtectionLockBranch copyWith({bool Function()? enabled}) { return BranchProtectionLockBranch(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BranchProtectionLockBranch &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'BranchProtectionLockBranch(enabled: $enabled)'; } 
 }
