// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_asn_configuration.dart';import 'firewall_cidr_configuration.dart';import 'firewall_configuration.dart';import 'firewall_country_configuration.dart';import 'firewall_description.dart';import 'firewall_ip_configuration.dart';import 'firewall_ipv6_configuration.dart';import 'firewall_schemas_mode.dart';import 'firewall_schemas_paused.dart';@immutable final class UserAgentBlockingRulesUpdateAUserAgentBlockingRuleRequest {const UserAgentBlockingRulesUpdateAUserAgentBlockingRuleRequest({required this.configuration, required this.mode, this.description, this.paused, });

factory UserAgentBlockingRulesUpdateAUserAgentBlockingRuleRequest.fromJson(Map<String, dynamic> json) { return UserAgentBlockingRulesUpdateAUserAgentBlockingRuleRequest(
  configuration: OneOf5.parse(json['configuration'], fromA: (v) => FirewallIpConfiguration.fromJson(v as Map<String, dynamic>), fromB: (v) => FirewallIpv6Configuration.fromJson(v as Map<String, dynamic>), fromC: (v) => FirewallCidrConfiguration.fromJson(v as Map<String, dynamic>), fromD: (v) => FirewallAsnConfiguration.fromJson(v as Map<String, dynamic>), fromE: (v) => FirewallCountryConfiguration.fromJson(v as Map<String, dynamic>),),
  description: json['description'] != null ? FirewallDescription.fromJson(json['description'] as String) : null,
  mode: FirewallSchemasMode.fromJson(json['mode'] as String),
  paused: json['paused'] != null ? FirewallSchemasPaused.fromJson(json['paused'] as bool) : null,
); }

final FirewallConfiguration configuration;

/// An informative summary of the rule. This value is sanitized and any tags will be removed.
final FirewallDescription? description;

/// The action to apply to a matched request.
final FirewallSchemasMode mode;

/// When true, indicates that the rule is currently paused.
final FirewallSchemasPaused? paused;

Map<String, dynamic> toJson() { return {
  'configuration': configuration.toJson(),
  if (description != null) 'description': description?.toJson(),
  'mode': mode.toJson(),
  if (paused != null) 'paused': paused?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('configuration') &&
      json.containsKey('mode'); } 
UserAgentBlockingRulesUpdateAUserAgentBlockingRuleRequest copyWith({FirewallConfiguration? configuration, FirewallDescription? Function()? description, FirewallSchemasMode? mode, FirewallSchemasPaused? Function()? paused, }) { return UserAgentBlockingRulesUpdateAUserAgentBlockingRuleRequest(
  configuration: configuration ?? this.configuration,
  description: description != null ? description() : this.description,
  mode: mode ?? this.mode,
  paused: paused != null ? paused() : this.paused,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserAgentBlockingRulesUpdateAUserAgentBlockingRuleRequest &&
          configuration == other.configuration &&
          description == other.description &&
          mode == other.mode &&
          paused == other.paused; } 
@override int get hashCode { return Object.hash(configuration, description, mode, paused); } 
@override String toString() { return 'UserAgentBlockingRulesUpdateAUserAgentBlockingRuleRequest(configuration: $configuration, description: $description, mode: $mode, paused: $paused)'; } 
 }
