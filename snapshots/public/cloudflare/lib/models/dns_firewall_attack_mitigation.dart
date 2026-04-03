// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Attack mitigation settings
@immutable final class DnsFirewallAttackMitigation {const DnsFirewallAttackMitigation({this.enabled, this.onlyWhenUpstreamUnhealthy = true, });

factory DnsFirewallAttackMitigation.fromJson(Map<String, dynamic> json) { return DnsFirewallAttackMitigation(
  enabled: json['enabled'] as bool?,
  onlyWhenUpstreamUnhealthy: json.containsKey('only_when_upstream_unhealthy') ? json['only_when_upstream_unhealthy'] as bool : true,
); }

/// When enabled, automatically mitigate random-prefix attacks to protect upstream DNS servers
final bool? enabled;

/// Only mitigate attacks when upstream servers seem unhealthy
final bool onlyWhenUpstreamUnhealthy;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  'only_when_upstream_unhealthy': onlyWhenUpstreamUnhealthy,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'only_when_upstream_unhealthy'}.contains(key)); } 
DnsFirewallAttackMitigation copyWith({bool Function()? enabled, bool Function()? onlyWhenUpstreamUnhealthy, }) { return DnsFirewallAttackMitigation(
  enabled: enabled != null ? enabled() : this.enabled,
  onlyWhenUpstreamUnhealthy: onlyWhenUpstreamUnhealthy != null ? onlyWhenUpstreamUnhealthy() : this.onlyWhenUpstreamUnhealthy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallAttackMitigation &&
          enabled == other.enabled &&
          onlyWhenUpstreamUnhealthy == other.onlyWhenUpstreamUnhealthy; } 
@override int get hashCode { return Object.hash(enabled, onlyWhenUpstreamUnhealthy); } 
@override String toString() { return 'DnsFirewallAttackMitigation(enabled: $enabled, onlyWhenUpstreamUnhealthy: $onlyWhenUpstreamUnhealthy)'; } 
 }
