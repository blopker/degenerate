// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ProtectedBranchAllowForcePushes {const ProtectedBranchAllowForcePushes({required this.enabled});

factory ProtectedBranchAllowForcePushes.fromJson(Map<String, dynamic> json) { return ProtectedBranchAllowForcePushes(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
ProtectedBranchAllowForcePushes copyWith({bool? enabled}) { return ProtectedBranchAllowForcePushes(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProtectedBranchAllowForcePushes &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ProtectedBranchAllowForcePushes(enabled: $enabled)'; } 
 }
