// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Whether to set the branch as read-only. If this is true, users will not be able to push to the branch.
@immutable final class ProtectedBranchLockBranch {const ProtectedBranchLockBranch({this.enabled});

factory ProtectedBranchLockBranch.fromJson(Map<String, dynamic> json) { return ProtectedBranchLockBranch(
  enabled: json['enabled'] as bool?,
); }

final bool? enabled;

/// The value with the schema default applied when absent.
bool get enabledOrDefault { return enabled ?? false; } 
Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
ProtectedBranchLockBranch copyWith({bool? Function()? enabled}) { return ProtectedBranchLockBranch(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProtectedBranchLockBranch &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ProtectedBranchLockBranch(enabled: $enabled)'; } 
 }
