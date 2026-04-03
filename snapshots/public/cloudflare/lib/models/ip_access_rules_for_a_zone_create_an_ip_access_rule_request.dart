// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_asn_configuration.dart';import 'firewall_cidr_configuration.dart';import 'firewall_configuration.dart';import 'firewall_country_configuration.dart';import 'firewall_ip_configuration.dart';import 'firewall_ipv6_configuration.dart';import 'firewall_notes.dart';import 'firewall_schemas_mode.dart';@immutable final class IpAccessRulesForAZoneCreateAnIpAccessRuleRequest {const IpAccessRulesForAZoneCreateAnIpAccessRuleRequest({required this.configuration, required this.mode, this.notes, });

factory IpAccessRulesForAZoneCreateAnIpAccessRuleRequest.fromJson(Map<String, dynamic> json) { return IpAccessRulesForAZoneCreateAnIpAccessRuleRequest(
  configuration: OneOf5.parse(json['configuration'], fromA: (v) => FirewallIpConfiguration.fromJson(v as Map<String, dynamic>), fromB: (v) => FirewallIpv6Configuration.fromJson(v as Map<String, dynamic>), fromC: (v) => FirewallCidrConfiguration.fromJson(v as Map<String, dynamic>), fromD: (v) => FirewallAsnConfiguration.fromJson(v as Map<String, dynamic>), fromE: (v) => FirewallCountryConfiguration.fromJson(v as Map<String, dynamic>),),
  mode: FirewallSchemasMode.fromJson(json['mode'] as String),
  notes: json['notes'] != null ? FirewallNotes.fromJson(json['notes'] as String) : null,
); }

final FirewallConfiguration configuration;

/// The action to apply to a matched request.
final FirewallSchemasMode mode;

/// An informative summary of the rule, typically used as a reminder or explanation.
final FirewallNotes? notes;

Map<String, dynamic> toJson() { return {
  'configuration': configuration.toJson(),
  'mode': mode.toJson(),
  if (notes != null) 'notes': notes?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('configuration') &&
      json.containsKey('mode'); } 
IpAccessRulesForAZoneCreateAnIpAccessRuleRequest copyWith({FirewallConfiguration? configuration, FirewallSchemasMode? mode, FirewallNotes Function()? notes, }) { return IpAccessRulesForAZoneCreateAnIpAccessRuleRequest(
  configuration: configuration ?? this.configuration,
  mode: mode ?? this.mode,
  notes: notes != null ? notes() : this.notes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IpAccessRulesForAZoneCreateAnIpAccessRuleRequest &&
          configuration == other.configuration &&
          mode == other.mode &&
          notes == other.notes; } 
@override int get hashCode { return Object.hash(configuration, mode, notes); } 
@override String toString() { return 'IpAccessRulesForAZoneCreateAnIpAccessRuleRequest(configuration: $configuration, mode: $mode, notes: $notes)'; } 
 }
