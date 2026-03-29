// GENERATED CODE - DO NOT MODIFY BY HAND

final class ProtectedBranchRequiredLinearHistory {const ProtectedBranchRequiredLinearHistory({required this.enabled});

factory ProtectedBranchRequiredLinearHistory.fromJson(Map<String, dynamic> json) { return ProtectedBranchRequiredLinearHistory(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
ProtectedBranchRequiredLinearHistory copyWith({bool? enabled}) { return ProtectedBranchRequiredLinearHistory(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProtectedBranchRequiredLinearHistory &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ProtectedBranchRequiredLinearHistory(enabled: $enabled)'; } 
 }
