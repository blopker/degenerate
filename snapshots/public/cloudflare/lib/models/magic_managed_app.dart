// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_app_name.dart';import 'magic_app_type.dart';import 'magic_cidr.dart';import 'magic_managed_app_id.dart';/// Managed app defined by Cloudflare.
final class MagicManagedApp {const MagicManagedApp({this.hostnames, this.ipSubnets, required this.managedAppId, this.name, this.sourceSubnets, this.type, });

factory MagicManagedApp.fromJson(Map<String, dynamic> json) { return MagicManagedApp(
  hostnames: (json['hostnames'] as List<dynamic>?)?.map((e) => e as String).toList(),
  ipSubnets: (json['ip_subnets'] as List<dynamic>?)?.map((e) => MagicCidr.fromJson(e as String)).toList(),
  managedAppId: MagicManagedAppId.fromJson(json['managed_app_id'] as String),
  name: json['name'] != null ? MagicAppName.fromJson(json['name'] as String) : null,
  sourceSubnets: (json['source_subnets'] as List<dynamic>?)?.map((e) => MagicCidr.fromJson(e as String)).toList(),
  type: json['type'] != null ? MagicAppType.fromJson(json['type'] as String) : null,
); }

/// FQDNs to associate with traffic decisions.
final List<String>? hostnames;

/// IPv4 CIDRs to associate with traffic decisions. (IPv6 CIDRs are currently unsupported)
final List<MagicCidr>? ipSubnets;

final MagicManagedAppId managedAppId;

/// Display name for the app.
final MagicAppName? name;

/// IPv4 CIDRs to associate with traffic decisions. (IPv6 CIDRs are currently unsupported)
final List<MagicCidr>? sourceSubnets;

/// Category of the app.
final MagicAppType? type;

Map<String, dynamic> toJson() { return {
  'hostnames': ?hostnames,
  if (ipSubnets != null) 'ip_subnets': ipSubnets?.map((e) => e.toJson()).toList(),
  'managed_app_id': managedAppId.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (sourceSubnets != null) 'source_subnets': sourceSubnets?.map((e) => e.toJson()).toList(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('managed_app_id'); } 
MagicManagedApp copyWith({List<String> Function()? hostnames, List<MagicCidr> Function()? ipSubnets, MagicManagedAppId? managedAppId, MagicAppName Function()? name, List<MagicCidr> Function()? sourceSubnets, MagicAppType Function()? type, }) { return MagicManagedApp(
  hostnames: hostnames != null ? hostnames() : this.hostnames,
  ipSubnets: ipSubnets != null ? ipSubnets() : this.ipSubnets,
  managedAppId: managedAppId ?? this.managedAppId,
  name: name != null ? name() : this.name,
  sourceSubnets: sourceSubnets != null ? sourceSubnets() : this.sourceSubnets,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicManagedApp &&
          listEquals(hostnames, other.hostnames) &&
          listEquals(ipSubnets, other.ipSubnets) &&
          managedAppId == other.managedAppId &&
          name == other.name &&
          listEquals(sourceSubnets, other.sourceSubnets) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(Object.hashAll(hostnames ?? const []), Object.hashAll(ipSubnets ?? const []), managedAppId, name, Object.hashAll(sourceSubnets ?? const []), type); } 
@override String toString() { return 'MagicManagedApp(hostnames: $hostnames, ipSubnets: $ipSubnets, managedAppId: $managedAppId, name: $name, sourceSubnets: $sourceSubnets, type: $type)'; } 
 }
