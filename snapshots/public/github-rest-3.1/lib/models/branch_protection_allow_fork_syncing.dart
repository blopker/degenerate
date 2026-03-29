// GENERATED CODE - DO NOT MODIFY BY HAND

/// Whether users can pull changes from upstream when the branch is locked. Set to `true` to allow fork syncing. Set to `false` to prevent fork syncing.
final class BranchProtectionAllowForkSyncing {const BranchProtectionAllowForkSyncing({this.enabled = false});

factory BranchProtectionAllowForkSyncing.fromJson(Map<String, dynamic> json) { return BranchProtectionAllowForkSyncing(
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : false,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BranchProtectionAllowForkSyncing copyWith({bool Function()? enabled}) { return BranchProtectionAllowForkSyncing(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BranchProtectionAllowForkSyncing &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'BranchProtectionAllowForkSyncing(enabled: $enabled)'; } 
 }
