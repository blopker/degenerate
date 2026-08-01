// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_icmp_proxy_enabled.dart';import 'tunnel_offramp_warp_enabled.dart';@immutable final class TunnelZeroTrustConnectivitySettingsResponseResult {const TunnelZeroTrustConnectivitySettingsResponseResult({this.icmpProxyEnabled, this.offrampWarpEnabled, });

factory TunnelZeroTrustConnectivitySettingsResponseResult.fromJson(Map<String, dynamic> json) { return TunnelZeroTrustConnectivitySettingsResponseResult(
  icmpProxyEnabled: json['icmp_proxy_enabled'] != null ? TunnelIcmpProxyEnabled.fromJson(json['icmp_proxy_enabled'] as bool) : null,
  offrampWarpEnabled: json['offramp_warp_enabled'] != null ? TunnelOfframpWarpEnabled.fromJson(json['offramp_warp_enabled'] as bool) : null,
); }

/// A flag to enable the ICMP proxy for the account network.
final TunnelIcmpProxyEnabled? icmpProxyEnabled;

/// A flag to enable WARP to WARP traffic.
final TunnelOfframpWarpEnabled? offrampWarpEnabled;

Map<String, dynamic> toJson() { return {
  if (icmpProxyEnabled != null) 'icmp_proxy_enabled': icmpProxyEnabled?.toJson(),
  if (offrampWarpEnabled != null) 'offramp_warp_enabled': offrampWarpEnabled?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'icmp_proxy_enabled', 'offramp_warp_enabled'}.contains(key)); } 
TunnelZeroTrustConnectivitySettingsResponseResult copyWith({TunnelIcmpProxyEnabled? Function()? icmpProxyEnabled, TunnelOfframpWarpEnabled? Function()? offrampWarpEnabled, }) { return TunnelZeroTrustConnectivitySettingsResponseResult(
  icmpProxyEnabled: icmpProxyEnabled != null ? icmpProxyEnabled() : this.icmpProxyEnabled,
  offrampWarpEnabled: offrampWarpEnabled != null ? offrampWarpEnabled() : this.offrampWarpEnabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelZeroTrustConnectivitySettingsResponseResult &&
          icmpProxyEnabled == other.icmpProxyEnabled &&
          offrampWarpEnabled == other.offrampWarpEnabled; } 
@override int get hashCode { return Object.hash(icmpProxyEnabled, offrampWarpEnabled); } 
@override String toString() { return 'TunnelZeroTrustConnectivitySettingsResponseResult(icmpProxyEnabled: $icmpProxyEnabled, offrampWarpEnabled: $offrampWarpEnabled)'; } 
 }
