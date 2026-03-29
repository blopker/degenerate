// GENERATED CODE - DO NOT MODIFY BY HAND

final class DosNewDnsProtectionRule {const DosNewDnsProtectionRule({required this.burstSensitivity, required this.mode, required this.name, required this.profileSensitivity, required this.rateSensitivity, required this.scope, });

factory DosNewDnsProtectionRule.fromJson(Map<String, dynamic> json) { return DosNewDnsProtectionRule(
  burstSensitivity: json['burst_sensitivity'] as String,
  mode: json['mode'] as String,
  name: json['name'] as String,
  profileSensitivity: json['profile_sensitivity'] as String,
  rateSensitivity: json['rate_sensitivity'] as String,
  scope: json['scope'] as String,
); }

/// The burst sensitivity. Must be one of 'low', 'medium', 'high'.
final String burstSensitivity;

/// The mode for DNS Protection. Must be one of 'enabled', 'disabled', 'monitoring'.
final String mode;

/// The name of the DNS Protection rule. Value is relative to the 'scope' setting. For 'global' scope, name should be 'global'. For either the 'region' or 'datacenter' scope, name should be the actual name of the region or datacenter, e.g., 'wnam' or 'lax'.
final String name;

/// The profile sensitivity. Recommended setting is 'low'. Must be one of 'low', 'medium', 'high', or 'very_high'.
final String profileSensitivity;

/// The rate sensitivity. Must be one of 'low', 'medium', 'high'.
final String rateSensitivity;

/// The scope for the DNS Protection rule. Must be one of 'global', 'region', or 'datacenter'.
final String scope;

Map<String, dynamic> toJson() { return {
  'burst_sensitivity': burstSensitivity,
  'mode': mode,
  'name': name,
  'profile_sensitivity': profileSensitivity,
  'rate_sensitivity': rateSensitivity,
  'scope': scope,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('burst_sensitivity') && json['burst_sensitivity'] is String &&
      json.containsKey('mode') && json['mode'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('profile_sensitivity') && json['profile_sensitivity'] is String &&
      json.containsKey('rate_sensitivity') && json['rate_sensitivity'] is String &&
      json.containsKey('scope') && json['scope'] is String; } 
DosNewDnsProtectionRule copyWith({String? burstSensitivity, String? mode, String? name, String? profileSensitivity, String? rateSensitivity, String? scope, }) { return DosNewDnsProtectionRule(
  burstSensitivity: burstSensitivity ?? this.burstSensitivity,
  mode: mode ?? this.mode,
  name: name ?? this.name,
  profileSensitivity: profileSensitivity ?? this.profileSensitivity,
  rateSensitivity: rateSensitivity ?? this.rateSensitivity,
  scope: scope ?? this.scope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosNewDnsProtectionRule &&
          burstSensitivity == other.burstSensitivity &&
          mode == other.mode &&
          name == other.name &&
          profileSensitivity == other.profileSensitivity &&
          rateSensitivity == other.rateSensitivity &&
          scope == other.scope; } 
@override int get hashCode { return Object.hash(burstSensitivity, mode, name, profileSensitivity, rateSensitivity, scope); } 
@override String toString() { return 'DosNewDnsProtectionRule(burstSensitivity: $burstSensitivity, mode: $mode, name: $name, profileSensitivity: $profileSensitivity, rateSensitivity: $rateSensitivity, scope: $scope)'; } 
 }
