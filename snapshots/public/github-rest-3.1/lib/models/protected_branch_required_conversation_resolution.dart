// GENERATED CODE - DO NOT MODIFY BY HAND

final class ProtectedBranchRequiredConversationResolution {const ProtectedBranchRequiredConversationResolution({this.enabled});

factory ProtectedBranchRequiredConversationResolution.fromJson(Map<String, dynamic> json) { return ProtectedBranchRequiredConversationResolution(
  enabled: json['enabled'] as bool?,
); }

final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ProtectedBranchRequiredConversationResolution copyWith({bool Function()? enabled}) { return ProtectedBranchRequiredConversationResolution(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProtectedBranchRequiredConversationResolution &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ProtectedBranchRequiredConversationResolution(enabled: $enabled)'; } 
 }
