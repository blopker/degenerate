// GENERATED CODE - DO NOT MODIFY BY HAND

final class DosProtectionStatus {const DosProtectionStatus({required this.enabled});

factory DosProtectionStatus.fromJson(Map<String, dynamic> json) { return DosProtectionStatus(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
DosProtectionStatus copyWith({bool? enabled}) { return DosProtectionStatus(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosProtectionStatus &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'DosProtectionStatus(enabled: $enabled)'; } 
 }
