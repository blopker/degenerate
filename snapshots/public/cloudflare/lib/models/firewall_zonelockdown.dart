// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_configurations2.dart';import 'firewall_lockdowns_components_schemas_id.dart';import 'firewall_modified_on.dart';import 'firewall_schemas_cidr_configuration.dart';import 'firewall_schemas_ip_configuration.dart';import 'firewall_schemas_paused.dart';/// The timestamp of when the rule was created.
extension type FirewallCreatedOn(DateTime value) {
factory FirewallCreatedOn.fromJson(String json) => FirewallCreatedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// An informative summary of the rule.
extension type const FirewallLockdownsComponentsSchemasDescription(String value) {
factory FirewallLockdownsComponentsSchemasDescription.fromJson(String json) => FirewallLockdownsComponentsSchemasDescription(json);

String toJson() => value;

}
final class FirewallZonelockdown {const FirewallZonelockdown({required this.configurations, required this.createdOn, required this.description, required this.id, required this.modifiedOn, required this.paused, required this.urls, });

factory FirewallZonelockdown.fromJson(Map<String, dynamic> json) { return FirewallZonelockdown(
  configurations: (json['configurations'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => FirewallSchemasIpConfiguration.fromJson(v as Map<String, dynamic>), fromB: (v) => FirewallSchemasCidrConfiguration.fromJson(v as Map<String, dynamic>),)).toList(),
  createdOn: FirewallCreatedOn.fromJson(json['created_on'] as String),
  description: FirewallLockdownsComponentsSchemasDescription.fromJson(json['description'] as String),
  id: FirewallLockdownsComponentsSchemasId.fromJson(json['id'] as String),
  modifiedOn: FirewallModifiedOn.fromJson(json['modified_on'] as String),
  paused: FirewallSchemasPaused.fromJson(json['paused'] as bool),
  urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// A list of IP addresses or CIDR ranges that will be allowed to access the URLs specified in the Zone Lockdown rule. You can include any number of `ip` or `ip_range` configurations.
final List<FirewallConfigurations2> configurations;

/// The timestamp of when the rule was created.
final FirewallCreatedOn createdOn;

/// An informative summary of the rule.
final FirewallLockdownsComponentsSchemasDescription description;

/// The unique identifier of the Zone Lockdown rule.
final FirewallLockdownsComponentsSchemasId id;

/// The timestamp of when the rule was last modified.
final FirewallModifiedOn modifiedOn;

/// When true, indicates that the rule is currently paused.
final FirewallSchemasPaused paused;

/// The URLs to include in the rule definition. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
final List<String> urls;

Map<String, dynamic> toJson() { return {
  'configurations': configurations.map((e) => e.toJson()).toList(),
  'created_on': createdOn.toJson(),
  'description': description.toJson(),
  'id': id.toJson(),
  'modified_on': modifiedOn.toJson(),
  'paused': paused.toJson(),
  'urls': urls,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('configurations') &&
      json.containsKey('created_on') &&
      json.containsKey('description') &&
      json.containsKey('id') &&
      json.containsKey('modified_on') &&
      json.containsKey('paused') &&
      json.containsKey('urls'); } 
FirewallZonelockdown copyWith({List<FirewallConfigurations2>? configurations, FirewallCreatedOn? createdOn, FirewallLockdownsComponentsSchemasDescription? description, FirewallLockdownsComponentsSchemasId? id, FirewallModifiedOn? modifiedOn, FirewallSchemasPaused? paused, List<String>? urls, }) { return FirewallZonelockdown(
  configurations: configurations ?? this.configurations,
  createdOn: createdOn ?? this.createdOn,
  description: description ?? this.description,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  paused: paused ?? this.paused,
  urls: urls ?? this.urls,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallZonelockdown &&
          listEquals(configurations, other.configurations) &&
          createdOn == other.createdOn &&
          description == other.description &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          paused == other.paused &&
          listEquals(urls, other.urls); } 
@override int get hashCode { return Object.hash(Object.hashAll(configurations), createdOn, description, id, modifiedOn, paused, Object.hashAll(urls)); } 
@override String toString() { return 'FirewallZonelockdown(configurations: $configurations, createdOn: $createdOn, description: $description, id: $id, modifiedOn: $modifiedOn, paused: $paused, urls: $urls)'; } 
 }
