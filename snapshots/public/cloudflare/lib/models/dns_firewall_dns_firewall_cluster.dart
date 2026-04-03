// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_firewall_attack_mitigation.dart';import 'dns_firewall_deprecate_any_requests.dart';import 'dns_firewall_ecs_fallback.dart';import 'dns_firewall_maximum_cache_ttl.dart';import 'dns_firewall_minimum_cache_ttl.dart';import 'dns_firewall_name.dart';import 'dns_firewall_negative_cache_ttl.dart';import 'dns_firewall_ratelimit.dart';import 'dns_firewall_retries.dart';@immutable final class DnsFirewallDnsFirewallCluster {const DnsFirewallDnsFirewallCluster({this.attackMitigation, this.deprecateAnyRequests, this.ecsFallback, this.maximumCacheTtl, this.minimumCacheTtl, this.name, this.negativeCacheTtl, this.ratelimit, this.retries, this.upstreamIps, });

factory DnsFirewallDnsFirewallCluster.fromJson(Map<String, dynamic> json) { return DnsFirewallDnsFirewallCluster(
  attackMitigation: json['attack_mitigation'] != null ? DnsFirewallAttackMitigation.fromJson(json['attack_mitigation'] as Map<String, dynamic>) : null,
  deprecateAnyRequests: json['deprecate_any_requests'] != null ? DnsFirewallDeprecateAnyRequests.fromJson(json['deprecate_any_requests'] as bool) : null,
  ecsFallback: json['ecs_fallback'] != null ? DnsFirewallEcsFallback.fromJson(json['ecs_fallback'] as bool) : null,
  maximumCacheTtl: json['maximum_cache_ttl'] != null ? DnsFirewallMaximumCacheTtl.fromJson(json['maximum_cache_ttl'] as num) : null,
  minimumCacheTtl: json['minimum_cache_ttl'] != null ? DnsFirewallMinimumCacheTtl.fromJson(json['minimum_cache_ttl'] as num) : null,
  name: json['name'] != null ? DnsFirewallName.fromJson(json['name'] as String) : null,
  negativeCacheTtl: json['negative_cache_ttl'] != null ? DnsFirewallNegativeCacheTtl.fromJson(json['negative_cache_ttl'] as num) : null,
  ratelimit: json['ratelimit'] != null ? DnsFirewallRatelimit.fromJson(json['ratelimit'] as num) : null,
  retries: json['retries'] != null ? DnsFirewallRetries.fromJson(json['retries'] as num) : null,
  upstreamIps: (json['upstream_ips'] as List<dynamic>?)?.map((e) => e).toList(),
); }

final DnsFirewallAttackMitigation? attackMitigation;

/// Whether to refuse to answer queries for the ANY type
final DnsFirewallDeprecateAnyRequests? deprecateAnyRequests;

final DnsFirewallEcsFallback? ecsFallback;

final DnsFirewallMaximumCacheTtl? maximumCacheTtl;

final DnsFirewallMinimumCacheTtl? minimumCacheTtl;

final DnsFirewallName? name;

final DnsFirewallNegativeCacheTtl? negativeCacheTtl;

final DnsFirewallRatelimit? ratelimit;

final DnsFirewallRetries? retries;

final List<dynamic>? upstreamIps;

Map<String, dynamic> toJson() { return {
  if (attackMitigation != null) 'attack_mitigation': attackMitigation?.toJson(),
  if (deprecateAnyRequests != null) 'deprecate_any_requests': deprecateAnyRequests?.toJson(),
  if (ecsFallback != null) 'ecs_fallback': ecsFallback?.toJson(),
  if (maximumCacheTtl != null) 'maximum_cache_ttl': maximumCacheTtl?.toJson(),
  if (minimumCacheTtl != null) 'minimum_cache_ttl': minimumCacheTtl?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (negativeCacheTtl != null) 'negative_cache_ttl': negativeCacheTtl?.toJson(),
  if (ratelimit != null) 'ratelimit': ratelimit?.toJson(),
  if (retries != null) 'retries': retries?.toJson(),
  'upstream_ips': ?upstreamIps,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'attack_mitigation', 'deprecate_any_requests', 'ecs_fallback', 'maximum_cache_ttl', 'minimum_cache_ttl', 'name', 'negative_cache_ttl', 'ratelimit', 'retries', 'upstream_ips'}.contains(key)); } 
DnsFirewallDnsFirewallCluster copyWith({DnsFirewallAttackMitigation Function()? attackMitigation, DnsFirewallDeprecateAnyRequests Function()? deprecateAnyRequests, DnsFirewallEcsFallback Function()? ecsFallback, DnsFirewallMaximumCacheTtl Function()? maximumCacheTtl, DnsFirewallMinimumCacheTtl Function()? minimumCacheTtl, DnsFirewallName Function()? name, DnsFirewallNegativeCacheTtl? Function()? negativeCacheTtl, DnsFirewallRatelimit? Function()? ratelimit, DnsFirewallRetries Function()? retries, List<dynamic> Function()? upstreamIps, }) { return DnsFirewallDnsFirewallCluster(
  attackMitigation: attackMitigation != null ? attackMitigation() : this.attackMitigation,
  deprecateAnyRequests: deprecateAnyRequests != null ? deprecateAnyRequests() : this.deprecateAnyRequests,
  ecsFallback: ecsFallback != null ? ecsFallback() : this.ecsFallback,
  maximumCacheTtl: maximumCacheTtl != null ? maximumCacheTtl() : this.maximumCacheTtl,
  minimumCacheTtl: minimumCacheTtl != null ? minimumCacheTtl() : this.minimumCacheTtl,
  name: name != null ? name() : this.name,
  negativeCacheTtl: negativeCacheTtl != null ? negativeCacheTtl() : this.negativeCacheTtl,
  ratelimit: ratelimit != null ? ratelimit() : this.ratelimit,
  retries: retries != null ? retries() : this.retries,
  upstreamIps: upstreamIps != null ? upstreamIps() : this.upstreamIps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallDnsFirewallCluster &&
          attackMitigation == other.attackMitigation &&
          deprecateAnyRequests == other.deprecateAnyRequests &&
          ecsFallback == other.ecsFallback &&
          maximumCacheTtl == other.maximumCacheTtl &&
          minimumCacheTtl == other.minimumCacheTtl &&
          name == other.name &&
          negativeCacheTtl == other.negativeCacheTtl &&
          ratelimit == other.ratelimit &&
          retries == other.retries &&
          listEquals(upstreamIps, other.upstreamIps); } 
@override int get hashCode { return Object.hash(attackMitigation, deprecateAnyRequests, ecsFallback, maximumCacheTtl, minimumCacheTtl, name, negativeCacheTtl, ratelimit, retries, Object.hashAll(upstreamIps ?? const [])); } 
@override String toString() { return 'DnsFirewallDnsFirewallCluster(attackMitigation: $attackMitigation, deprecateAnyRequests: $deprecateAnyRequests, ecsFallback: $ecsFallback, maximumCacheTtl: $maximumCacheTtl, minimumCacheTtl: $minimumCacheTtl, name: $name, negativeCacheTtl: $negativeCacheTtl, ratelimit: $ratelimit, retries: $retries, upstreamIps: $upstreamIps)'; } 
 }
