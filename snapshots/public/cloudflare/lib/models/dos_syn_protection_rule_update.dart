// GENERATED CODE - DO NOT MODIFY BY HAND

final class DosSynProtectionRuleUpdate {const DosSynProtectionRuleUpdate({this.burstSensitivity, this.mitigationType, this.mode, this.rateSensitivity, });

factory DosSynProtectionRuleUpdate.fromJson(Map<String, dynamic> json) { return DosSynProtectionRuleUpdate(
  burstSensitivity: json['burst_sensitivity'] as String?,
  mitigationType: json['mitigation_type'] as String?,
  mode: json['mode'] as String?,
  rateSensitivity: json['rate_sensitivity'] as String?,
); }

/// The new burst sensitivity. Optional. Must be one of 'low', 'medium', 'high'.
final String? burstSensitivity;

/// The new mitigation type. Optional. Must be one of 'challenge' or 'retransmit'.
final String? mitigationType;

/// The new mode for SYN Protection. Optional. Must be one of 'enabled', 'disabled', 'monitoring'.
final String? mode;

/// The new rate sensitivity. Optional. Must be one of 'low', 'medium', 'high'.
final String? rateSensitivity;

Map<String, dynamic> toJson() { return {
  'burst_sensitivity': ?burstSensitivity,
  'mitigation_type': ?mitigationType,
  'mode': ?mode,
  'rate_sensitivity': ?rateSensitivity,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'burst_sensitivity', 'mitigation_type', 'mode', 'rate_sensitivity'}.contains(key)); } 
DosSynProtectionRuleUpdate copyWith({String Function()? burstSensitivity, String Function()? mitigationType, String Function()? mode, String Function()? rateSensitivity, }) { return DosSynProtectionRuleUpdate(
  burstSensitivity: burstSensitivity != null ? burstSensitivity() : this.burstSensitivity,
  mitigationType: mitigationType != null ? mitigationType() : this.mitigationType,
  mode: mode != null ? mode() : this.mode,
  rateSensitivity: rateSensitivity != null ? rateSensitivity() : this.rateSensitivity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosSynProtectionRuleUpdate &&
          burstSensitivity == other.burstSensitivity &&
          mitigationType == other.mitigationType &&
          mode == other.mode &&
          rateSensitivity == other.rateSensitivity; } 
@override int get hashCode { return Object.hash(burstSensitivity, mitigationType, mode, rateSensitivity); } 
@override String toString() { return 'DosSynProtectionRuleUpdate(burstSensitivity: $burstSensitivity, mitigationType: $mitigationType, mode: $mode, rateSensitivity: $rateSensitivity)'; } 
 }
