// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BranchProtectionRequiredConversationResolution {const BranchProtectionRequiredConversationResolution({this.enabled});

factory BranchProtectionRequiredConversationResolution.fromJson(Map<String, dynamic> json) { return BranchProtectionRequiredConversationResolution(
  enabled: json['enabled'] as bool?,
); }

final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
BranchProtectionRequiredConversationResolution copyWith({bool Function()? enabled}) { return BranchProtectionRequiredConversationResolution(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BranchProtectionRequiredConversationResolution &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'BranchProtectionRequiredConversationResolution(enabled: $enabled)'; } 
 }
