// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BranchProtectionRequiredLinearHistory {const BranchProtectionRequiredLinearHistory({this.enabled});

factory BranchProtectionRequiredLinearHistory.fromJson(Map<String, dynamic> json) { return BranchProtectionRequiredLinearHistory(
  enabled: json['enabled'] as bool?,
); }

final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
BranchProtectionRequiredLinearHistory copyWith({bool Function()? enabled}) { return BranchProtectionRequiredLinearHistory(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BranchProtectionRequiredLinearHistory &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'BranchProtectionRequiredLinearHistory(enabled: $enabled)'; } 
 }
