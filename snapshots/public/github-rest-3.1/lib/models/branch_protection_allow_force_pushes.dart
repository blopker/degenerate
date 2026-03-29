// GENERATED CODE - DO NOT MODIFY BY HAND

final class BranchProtectionAllowForcePushes {const BranchProtectionAllowForcePushes({this.enabled});

factory BranchProtectionAllowForcePushes.fromJson(Map<String, dynamic> json) { return BranchProtectionAllowForcePushes(
  enabled: json['enabled'] as bool?,
); }

final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BranchProtectionAllowForcePushes copyWith({bool Function()? enabled}) { return BranchProtectionAllowForcePushes(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BranchProtectionAllowForcePushes &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'BranchProtectionAllowForcePushes(enabled: $enabled)'; } 
 }
