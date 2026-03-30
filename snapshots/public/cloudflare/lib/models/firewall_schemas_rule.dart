// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_asn_configuration.dart';import 'firewall_cidr_configuration.dart';import 'firewall_configuration.dart';import 'firewall_country_configuration.dart';import 'firewall_ip_configuration.dart';import 'firewall_ipv6_configuration.dart';import 'firewall_notes.dart';import 'firewall_schemas_identifier.dart';import 'firewall_schemas_mode.dart';import 'firewall_schemas_rule_scope.dart';final class FirewallSchemasRule {const FirewallSchemasRule({required this.allowedModes, required this.configuration, this.createdOn, required this.id, required this.mode, this.modifiedOn, this.notes, required this.scope, });

factory FirewallSchemasRule.fromJson(Map<String, dynamic> json) { return FirewallSchemasRule(
  allowedModes: (json['allowed_modes'] as List<dynamic>).map((e) => FirewallSchemasMode.fromJson(e as String)).toList(),
  configuration: OneOf5.parse(json['configuration'], fromA: (v) => FirewallIpConfiguration.fromJson(v as Map<String, dynamic>), fromB: (v) => FirewallIpv6Configuration.fromJson(v as Map<String, dynamic>), fromC: (v) => FirewallCidrConfiguration.fromJson(v as Map<String, dynamic>), fromD: (v) => FirewallAsnConfiguration.fromJson(v as Map<String, dynamic>), fromE: (v) => FirewallCountryConfiguration.fromJson(v as Map<String, dynamic>),),
  createdOn: json['created_on'] != null ? DateTime.parse(json['created_on'] as String) : null,
  id: FirewallSchemasIdentifier.fromJson(json['id'] as String),
  mode: FirewallSchemasMode.fromJson(json['mode'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  notes: json['notes'] != null ? FirewallNotes.fromJson(json['notes'] as String) : null,
  scope: FirewallSchemasRuleScope.fromJson(json['scope'] as Map<String, dynamic>),
); }

/// The available actions that a rule can apply to a matched request.
final List<FirewallSchemasMode> allowedModes;

final FirewallConfiguration configuration;

/// The timestamp of when the rule was created.
final DateTime? createdOn;

/// The unique identifier of the IP Access rule.
final FirewallSchemasIdentifier id;

/// The action to apply to a matched request.
final FirewallSchemasMode mode;

/// The timestamp of when the rule was last modified.
final DateTime? modifiedOn;

/// An informative summary of the rule, typically used as a reminder or explanation.
final FirewallNotes? notes;

/// All zones owned by the user will have the rule applied.
final FirewallSchemasRuleScope scope;

Map<String, dynamic> toJson() { return {
  'allowed_modes': allowedModes.map((e) => e.toJson()).toList(),
  'configuration': configuration.toJson(),
  if (createdOn != null) 'created_on': createdOn?.toIso8601String(),
  'id': id.toJson(),
  'mode': mode.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  if (notes != null) 'notes': notes?.toJson(),
  'scope': scope.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('allowed_modes') &&
      json.containsKey('configuration') &&
      json.containsKey('id') &&
      json.containsKey('mode') &&
      json.containsKey('scope'); } 
FirewallSchemasRule copyWith({List<FirewallSchemasMode>? allowedModes, FirewallConfiguration? configuration, DateTime Function()? createdOn, FirewallSchemasIdentifier? id, FirewallSchemasMode? mode, DateTime Function()? modifiedOn, FirewallNotes Function()? notes, FirewallSchemasRuleScope? scope, }) { return FirewallSchemasRule(
  allowedModes: allowedModes ?? this.allowedModes,
  configuration: configuration ?? this.configuration,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  id: id ?? this.id,
  mode: mode ?? this.mode,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  notes: notes != null ? notes() : this.notes,
  scope: scope ?? this.scope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallSchemasRule &&
          listEquals(allowedModes, other.allowedModes) &&
          configuration == other.configuration &&
          createdOn == other.createdOn &&
          id == other.id &&
          mode == other.mode &&
          modifiedOn == other.modifiedOn &&
          notes == other.notes &&
          scope == other.scope; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedModes), configuration, createdOn, id, mode, modifiedOn, notes, scope); } 
@override String toString() { return 'FirewallSchemasRule(allowedModes: $allowedModes, configuration: $configuration, createdOn: $createdOn, id: $id, mode: $mode, modifiedOn: $modifiedOn, notes: $notes, scope: $scope)'; } 
 }
