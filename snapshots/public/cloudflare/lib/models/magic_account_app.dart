// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_account_app_id.dart';import 'magic_app_name.dart';import 'magic_app_type.dart';import 'magic_cidr.dart';/// Custom app defined for an account.
@immutable final class MagicAccountApp {const MagicAccountApp({required this.accountAppId, this.hostnames, this.ipSubnets, this.name, this.sourceSubnets, this.type, });

factory MagicAccountApp.fromJson(Map<String, dynamic> json) { return MagicAccountApp(
  accountAppId: MagicAccountAppId.fromJson(json['account_app_id'] as String),
  hostnames: (json['hostnames'] as List<dynamic>?)?.map((e) => e as String).toList(),
  ipSubnets: (json['ip_subnets'] as List<dynamic>?)?.map((e) => MagicCidr.fromJson(e as String)).toList(),
  name: json['name'] != null ? MagicAppName.fromJson(json['name'] as String) : null,
  sourceSubnets: (json['source_subnets'] as List<dynamic>?)?.map((e) => MagicCidr.fromJson(e as String)).toList(),
  type: json['type'] != null ? MagicAppType.fromJson(json['type'] as String) : null,
); }

final MagicAccountAppId accountAppId;

final List<String>? hostnames;

final List<MagicCidr>? ipSubnets;

final MagicAppName? name;

final List<MagicCidr>? sourceSubnets;

final MagicAppType? type;

Map<String, dynamic> toJson() { return {
  'account_app_id': accountAppId.toJson(),
  'hostnames': ?hostnames,
  if (ipSubnets != null) 'ip_subnets': ipSubnets?.map((e) => e.toJson()).toList(),
  if (name != null) 'name': name?.toJson(),
  if (sourceSubnets != null) 'source_subnets': sourceSubnets?.map((e) => e.toJson()).toList(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_app_id'); } 
MagicAccountApp copyWith({MagicAccountAppId? accountAppId, List<String> Function()? hostnames, List<MagicCidr> Function()? ipSubnets, MagicAppName Function()? name, List<MagicCidr> Function()? sourceSubnets, MagicAppType Function()? type, }) { return MagicAccountApp(
  accountAppId: accountAppId ?? this.accountAppId,
  hostnames: hostnames != null ? hostnames() : this.hostnames,
  ipSubnets: ipSubnets != null ? ipSubnets() : this.ipSubnets,
  name: name != null ? name() : this.name,
  sourceSubnets: sourceSubnets != null ? sourceSubnets() : this.sourceSubnets,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicAccountApp &&
          accountAppId == other.accountAppId &&
          listEquals(hostnames, other.hostnames) &&
          listEquals(ipSubnets, other.ipSubnets) &&
          name == other.name &&
          listEquals(sourceSubnets, other.sourceSubnets) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(accountAppId, Object.hashAll(hostnames ?? const []), Object.hashAll(ipSubnets ?? const []), name, Object.hashAll(sourceSubnets ?? const []), type); } 
@override String toString() { return 'MagicAccountApp(accountAppId: $accountAppId, hostnames: $hostnames, ipSubnets: $ipSubnets, name: $name, sourceSubnets: $sourceSubnets, type: $type)'; } 
 }
