// GENERATED CODE - DO NOT MODIFY BY HAND

/// Whether users can pull changes from upstream when the branch is locked. Set to `true` to allow fork syncing. Set to `false` to prevent fork syncing.
final class ProtectedBranchAllowForkSyncing {const ProtectedBranchAllowForkSyncing({this.enabled = false});

factory ProtectedBranchAllowForkSyncing.fromJson(Map<String, dynamic> json) { return ProtectedBranchAllowForkSyncing(
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : false,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
ProtectedBranchAllowForkSyncing copyWith({bool Function()? enabled}) { return ProtectedBranchAllowForkSyncing(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProtectedBranchAllowForkSyncing &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ProtectedBranchAllowForkSyncing(enabled: $enabled)'; } 
 }
