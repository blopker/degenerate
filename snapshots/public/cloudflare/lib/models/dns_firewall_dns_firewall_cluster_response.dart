// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_firewall_attack_mitigation.dart';import 'dns_firewall_deprecate_any_requests.dart';import 'dns_firewall_ecs_fallback.dart';import 'dns_firewall_identifier.dart';import 'dns_firewall_maximum_cache_ttl.dart';import 'dns_firewall_minimum_cache_ttl.dart';import 'dns_firewall_name.dart';import 'dns_firewall_negative_cache_ttl.dart';import 'dns_firewall_ratelimit.dart';import 'dns_firewall_retries.dart';/// Last modification of DNS Firewall cluster
extension type DnsFirewallModifiedOn(DateTime value) {
factory DnsFirewallModifiedOn.fromJson(String json) => DnsFirewallModifiedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
final class DnsFirewallDnsFirewallClusterResponse {const DnsFirewallDnsFirewallClusterResponse({this.attackMitigation, required this.deprecateAnyRequests, required this.ecsFallback, required this.maximumCacheTtl, required this.minimumCacheTtl, required this.name, required this.negativeCacheTtl, required this.ratelimit, required this.retries, required this.upstreamIps, required this.dnsFirewallIps, required this.id, required this.modifiedOn, });

factory DnsFirewallDnsFirewallClusterResponse.fromJson(Map<String, dynamic> json) { return DnsFirewallDnsFirewallClusterResponse(
  attackMitigation: json['attack_mitigation'] != null ? DnsFirewallAttackMitigation.fromJson(json['attack_mitigation'] as Map<String, dynamic>) : null,
  deprecateAnyRequests: DnsFirewallDeprecateAnyRequests.fromJson(json['deprecate_any_requests'] as bool),
  ecsFallback: DnsFirewallEcsFallback.fromJson(json['ecs_fallback'] as bool),
  maximumCacheTtl: DnsFirewallMaximumCacheTtl.fromJson(json['maximum_cache_ttl'] as num),
  minimumCacheTtl: DnsFirewallMinimumCacheTtl.fromJson(json['minimum_cache_ttl'] as num),
  name: DnsFirewallName.fromJson(json['name'] as String),
  negativeCacheTtl: json['negative_cache_ttl'] != null ? DnsFirewallNegativeCacheTtl.fromJson(json['negative_cache_ttl'] as num) : null,
  ratelimit: json['ratelimit'] != null ? DnsFirewallRatelimit.fromJson(json['ratelimit'] as num) : null,
  retries: DnsFirewallRetries.fromJson(json['retries'] as num),
  upstreamIps: (json['upstream_ips'] as List<dynamic>).map((e) => e).toList(),
  dnsFirewallIps: (json['dns_firewall_ips'] as List<dynamic>).map((e) => e).toList(),
  id: DnsFirewallIdentifier.fromJson(json['id'] as String),
  modifiedOn: DnsFirewallModifiedOn.fromJson(json['modified_on'] as String),
); }

final DnsFirewallAttackMitigation? attackMitigation;

/// Whether to refuse to answer queries for the ANY type
final DnsFirewallDeprecateAnyRequests deprecateAnyRequests;

final DnsFirewallEcsFallback ecsFallback;

final DnsFirewallMaximumCacheTtl maximumCacheTtl;

final DnsFirewallMinimumCacheTtl minimumCacheTtl;

final DnsFirewallName name;

final DnsFirewallNegativeCacheTtl? negativeCacheTtl;

final DnsFirewallRatelimit? ratelimit;

final DnsFirewallRetries retries;

final List<dynamic> upstreamIps;

final List<dynamic> dnsFirewallIps;

final DnsFirewallIdentifier id;

final DnsFirewallModifiedOn modifiedOn;

Map<String, dynamic> toJson() { return {
  if (attackMitigation != null) 'attack_mitigation': attackMitigation?.toJson(),
  'deprecate_any_requests': deprecateAnyRequests.toJson(),
  'ecs_fallback': ecsFallback.toJson(),
  'maximum_cache_ttl': maximumCacheTtl.toJson(),
  'minimum_cache_ttl': minimumCacheTtl.toJson(),
  'name': name.toJson(),
  if (negativeCacheTtl != null) 'negative_cache_ttl': negativeCacheTtl?.toJson(),
  if (ratelimit != null) 'ratelimit': ratelimit?.toJson(),
  'retries': retries.toJson(),
  'upstream_ips': upstreamIps,
  'dns_firewall_ips': dnsFirewallIps,
  'id': id.toJson(),
  'modified_on': modifiedOn.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deprecate_any_requests') &&
      json.containsKey('ecs_fallback') &&
      json.containsKey('maximum_cache_ttl') &&
      json.containsKey('minimum_cache_ttl') &&
      json.containsKey('name') &&
      json.containsKey('negative_cache_ttl') &&
      json.containsKey('ratelimit') &&
      json.containsKey('retries') &&
      json.containsKey('upstream_ips') &&
      json.containsKey('dns_firewall_ips') &&
      json.containsKey('id') &&
      json.containsKey('modified_on'); } 
DnsFirewallDnsFirewallClusterResponse copyWith({DnsFirewallAttackMitigation Function()? attackMitigation, DnsFirewallDeprecateAnyRequests? deprecateAnyRequests, DnsFirewallEcsFallback? ecsFallback, DnsFirewallMaximumCacheTtl? maximumCacheTtl, DnsFirewallMinimumCacheTtl? minimumCacheTtl, DnsFirewallName? name, DnsFirewallNegativeCacheTtl? Function()? negativeCacheTtl, DnsFirewallRatelimit? Function()? ratelimit, DnsFirewallRetries? retries, List<dynamic>? upstreamIps, List<dynamic>? dnsFirewallIps, DnsFirewallIdentifier? id, DnsFirewallModifiedOn? modifiedOn, }) { return DnsFirewallDnsFirewallClusterResponse(
  attackMitigation: attackMitigation != null ? attackMitigation() : this.attackMitigation,
  deprecateAnyRequests: deprecateAnyRequests ?? this.deprecateAnyRequests,
  ecsFallback: ecsFallback ?? this.ecsFallback,
  maximumCacheTtl: maximumCacheTtl ?? this.maximumCacheTtl,
  minimumCacheTtl: minimumCacheTtl ?? this.minimumCacheTtl,
  name: name ?? this.name,
  negativeCacheTtl: negativeCacheTtl != null ? negativeCacheTtl() : this.negativeCacheTtl,
  ratelimit: ratelimit != null ? ratelimit() : this.ratelimit,
  retries: retries ?? this.retries,
  upstreamIps: upstreamIps ?? this.upstreamIps,
  dnsFirewallIps: dnsFirewallIps ?? this.dnsFirewallIps,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallDnsFirewallClusterResponse &&
          attackMitigation == other.attackMitigation &&
          deprecateAnyRequests == other.deprecateAnyRequests &&
          ecsFallback == other.ecsFallback &&
          maximumCacheTtl == other.maximumCacheTtl &&
          minimumCacheTtl == other.minimumCacheTtl &&
          name == other.name &&
          negativeCacheTtl == other.negativeCacheTtl &&
          ratelimit == other.ratelimit &&
          retries == other.retries &&
          listEquals(upstreamIps, other.upstreamIps) &&
          listEquals(dnsFirewallIps, other.dnsFirewallIps) &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(attackMitigation, deprecateAnyRequests, ecsFallback, maximumCacheTtl, minimumCacheTtl, name, negativeCacheTtl, ratelimit, retries, Object.hashAll(upstreamIps), Object.hashAll(dnsFirewallIps), id, modifiedOn); } 
@override String toString() { return 'DnsFirewallDnsFirewallClusterResponse(attackMitigation: $attackMitigation, deprecateAnyRequests: $deprecateAnyRequests, ecsFallback: $ecsFallback, maximumCacheTtl: $maximumCacheTtl, minimumCacheTtl: $minimumCacheTtl, name: $name, negativeCacheTtl: $negativeCacheTtl, ratelimit: $ratelimit, retries: $retries, upstreamIps: $upstreamIps, dnsFirewallIps: $dnsFirewallIps, id: $id, modifiedOn: $modifiedOn)'; } 
 }
