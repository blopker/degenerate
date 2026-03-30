// GENERATED CODE - DO NOT MODIFY BY HAND

/// Observability logging settings.
final class CcObservabilityLogs {const CcObservabilityLogs({this.enabled = false});

factory CcObservabilityLogs.fromJson(Map<String, dynamic> json) { return CcObservabilityLogs(
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : false,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
CcObservabilityLogs copyWith({bool Function()? enabled}) { return CcObservabilityLogs(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CcObservabilityLogs &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'CcObservabilityLogs(enabled: $enabled)'; } 
 }
