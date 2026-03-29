// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_configurations2.dart';import 'firewall_description.dart';import 'firewall_schemas_cidr_configuration.dart';import 'firewall_schemas_ip_configuration.dart';import 'firewall_schemas_paused.dart';import 'firewall_schemas_priority.dart';final class ZoneLockdownCreateAZoneLockdownRuleRequest {const ZoneLockdownCreateAZoneLockdownRuleRequest({required this.configurations, this.description, this.paused, this.priority, required this.urls, });

factory ZoneLockdownCreateAZoneLockdownRuleRequest.fromJson(Map<String, dynamic> json) { return ZoneLockdownCreateAZoneLockdownRuleRequest(
  configurations: (json['configurations'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => FirewallSchemasIpConfiguration.fromJson(v as Map<String, dynamic>), fromB: (v) => FirewallSchemasCidrConfiguration.fromJson(v as Map<String, dynamic>),)).toList(),
  description: json['description'] != null ? FirewallDescription.fromJson(json['description'] as String) : null,
  paused: json['paused'] != null ? FirewallSchemasPaused.fromJson(json['paused'] as bool) : null,
  priority: json['priority'] != null ? FirewallSchemasPriority.fromJson(json['priority'] as num) : null,
  urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// A list of IP addresses or CIDR ranges that will be allowed to access the URLs specified in the Zone Lockdown rule. You can include any number of `ip` or `ip_range` configurations.
final List<FirewallConfigurations2> configurations;

/// An informative summary of the rule. This value is sanitized and any tags will be removed.
final FirewallDescription? description;

/// When true, indicates that the rule is currently paused.
final FirewallSchemasPaused? paused;

/// The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
final FirewallSchemasPriority? priority;

/// The URLs to include in the current WAF override. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
final List<String> urls;

Map<String, dynamic> toJson() { return {
  'configurations': configurations.map((e) => e.toJson()).toList(),
  if (description != null) 'description': description?.toJson(),
  if (paused != null) 'paused': paused?.toJson(),
  if (priority != null) 'priority': priority?.toJson(),
  'urls': urls,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('configurations') &&
      json.containsKey('urls'); } 
ZoneLockdownCreateAZoneLockdownRuleRequest copyWith({List<FirewallConfigurations2>? configurations, FirewallDescription Function()? description, FirewallSchemasPaused Function()? paused, FirewallSchemasPriority Function()? priority, List<String>? urls, }) { return ZoneLockdownCreateAZoneLockdownRuleRequest(
  configurations: configurations ?? this.configurations,
  description: description != null ? description() : this.description,
  paused: paused != null ? paused() : this.paused,
  priority: priority != null ? priority() : this.priority,
  urls: urls ?? this.urls,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneLockdownCreateAZoneLockdownRuleRequest &&
          listEquals(configurations, other.configurations) &&
          description == other.description &&
          paused == other.paused &&
          priority == other.priority &&
          listEquals(urls, other.urls); } 
@override int get hashCode { return Object.hash(Object.hashAll(configurations), description, paused, priority, Object.hashAll(urls)); } 
@override String toString() { return 'ZoneLockdownCreateAZoneLockdownRuleRequest(configurations: $configurations, description: $description, paused: $paused, priority: $priority, urls: $urls)'; } 
 }
