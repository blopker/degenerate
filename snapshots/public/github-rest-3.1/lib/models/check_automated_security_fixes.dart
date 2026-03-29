// GENERATED CODE - DO NOT MODIFY BY HAND

/// Check Dependabot security updates
final class CheckAutomatedSecurityFixes {const CheckAutomatedSecurityFixes({required this.enabled, required this.paused, });

factory CheckAutomatedSecurityFixes.fromJson(Map<String, dynamic> json) { return CheckAutomatedSecurityFixes(
  enabled: json['enabled'] as bool,
  paused: json['paused'] as bool,
); }

/// Whether Dependabot security updates are enabled for the repository.
final bool enabled;

/// Whether Dependabot security updates are paused for the repository.
final bool paused;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'paused': paused,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('paused') && json['paused'] is bool; } 
CheckAutomatedSecurityFixes copyWith({bool? enabled, bool? paused, }) { return CheckAutomatedSecurityFixes(
  enabled: enabled ?? this.enabled,
  paused: paused ?? this.paused,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckAutomatedSecurityFixes &&
          enabled == other.enabled &&
          paused == other.paused; } 
@override int get hashCode { return Object.hash(enabled, paused); } 
@override String toString() { return 'CheckAutomatedSecurityFixes(enabled: $enabled, paused: $paused)'; } 
 }
