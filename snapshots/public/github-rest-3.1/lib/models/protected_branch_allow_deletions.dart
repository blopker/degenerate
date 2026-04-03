// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ProtectedBranchAllowDeletions {const ProtectedBranchAllowDeletions({required this.enabled});

factory ProtectedBranchAllowDeletions.fromJson(Map<String, dynamic> json) { return ProtectedBranchAllowDeletions(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
ProtectedBranchAllowDeletions copyWith({bool? enabled}) { return ProtectedBranchAllowDeletions(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProtectedBranchAllowDeletions &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ProtectedBranchAllowDeletions(enabled: $enabled)'; } 
 }
