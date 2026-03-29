// GENERATED CODE - DO NOT MODIFY BY HAND

final class DosSynProtectionRule {const DosSynProtectionRule({required this.burstSensitivity, required this.createdOn, required this.id, required this.mitigationType, required this.mode, required this.modifiedOn, required this.name, required this.rateSensitivity, required this.scope, });

factory DosSynProtectionRule.fromJson(Map<String, dynamic> json) { return DosSynProtectionRule(
  burstSensitivity: json['burst_sensitivity'] as String,
  createdOn: DateTime.parse(json['created_on'] as String),
  id: json['id'] as String,
  mitigationType: json['mitigation_type'] as String,
  mode: json['mode'] as String,
  modifiedOn: DateTime.parse(json['modified_on'] as String),
  name: json['name'] as String,
  rateSensitivity: json['rate_sensitivity'] as String,
  scope: json['scope'] as String,
); }

/// The burst sensitivity. Must be one of 'low', 'medium', 'high'.
final String burstSensitivity;

/// The creation timestamp of the SYN Protection rule.
final DateTime createdOn;

/// The unique ID of the SYN Protection rule.
final String id;

/// The type of mitigation for SYN Protection. Must be one of 'challenge' or 'retransmit'.
final String mitigationType;

/// The mode for SYN Protection. Must be one of 'enabled', 'disabled', 'monitoring'.
final String mode;

/// The last modification timestamp of the SYN Protection rule.
final DateTime modifiedOn;

/// The name of the SYN Protection rule. Value is relative to the 'scope' setting. For 'global' scope, name should be 'global'. For either the 'region' or 'datacenter' scope, name should be the actual name of the region or datacenter, e.g., 'wnam' or 'lax'.
final String name;

/// The rate sensitivity. Must be one of 'low', 'medium', 'high'.
final String rateSensitivity;

/// The scope for the SYN Protection rule. Must be one of 'global', 'region', or 'datacenter'.
final String scope;

Map<String, dynamic> toJson() { return {
  'burst_sensitivity': burstSensitivity,
  'created_on': createdOn.toIso8601String(),
  'id': id,
  'mitigation_type': mitigationType,
  'mode': mode,
  'modified_on': modifiedOn.toIso8601String(),
  'name': name,
  'rate_sensitivity': rateSensitivity,
  'scope': scope,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('burst_sensitivity') && json['burst_sensitivity'] is String &&
      json.containsKey('created_on') && json['created_on'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('mitigation_type') && json['mitigation_type'] is String &&
      json.containsKey('mode') && json['mode'] is String &&
      json.containsKey('modified_on') && json['modified_on'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('rate_sensitivity') && json['rate_sensitivity'] is String &&
      json.containsKey('scope') && json['scope'] is String; } 
DosSynProtectionRule copyWith({String? burstSensitivity, DateTime? createdOn, String? id, String? mitigationType, String? mode, DateTime? modifiedOn, String? name, String? rateSensitivity, String? scope, }) { return DosSynProtectionRule(
  burstSensitivity: burstSensitivity ?? this.burstSensitivity,
  createdOn: createdOn ?? this.createdOn,
  id: id ?? this.id,
  mitigationType: mitigationType ?? this.mitigationType,
  mode: mode ?? this.mode,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  name: name ?? this.name,
  rateSensitivity: rateSensitivity ?? this.rateSensitivity,
  scope: scope ?? this.scope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosSynProtectionRule &&
          burstSensitivity == other.burstSensitivity &&
          createdOn == other.createdOn &&
          id == other.id &&
          mitigationType == other.mitigationType &&
          mode == other.mode &&
          modifiedOn == other.modifiedOn &&
          name == other.name &&
          rateSensitivity == other.rateSensitivity &&
          scope == other.scope; } 
@override int get hashCode { return Object.hash(burstSensitivity, createdOn, id, mitigationType, mode, modifiedOn, name, rateSensitivity, scope); } 
@override String toString() { return 'DosSynProtectionRule(burstSensitivity: $burstSensitivity, createdOn: $createdOn, id: $id, mitigationType: $mitigationType, mode: $mode, modifiedOn: $modifiedOn, name: $name, rateSensitivity: $rateSensitivity, scope: $scope)'; } 
 }
