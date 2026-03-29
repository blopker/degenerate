// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_ip_network.dart';final class ZeroTrustGatewayDotEndpoint {const ZeroTrustGatewayDotEndpoint({this.enabled, this.networks, });

factory ZeroTrustGatewayDotEndpoint.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayDotEndpoint(
  enabled: json['enabled'] as bool?,
  networks: (json['networks'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayIpNetwork.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Indicate whether the DOT endpoint is enabled for this location.
final bool? enabled;

final List<ZeroTrustGatewayIpNetwork>? networks;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  if (networks != null) 'networks': networks?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'networks'}.contains(key)); } 
ZeroTrustGatewayDotEndpoint copyWith({bool Function()? enabled, List<ZeroTrustGatewayIpNetwork>? Function()? networks, }) { return ZeroTrustGatewayDotEndpoint(
  enabled: enabled != null ? enabled() : this.enabled,
  networks: networks != null ? networks() : this.networks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayDotEndpoint &&
          enabled == other.enabled &&
          listEquals(networks, other.networks); } 
@override int get hashCode { return Object.hash(enabled, Object.hashAll(networks ?? const [])); } 
@override String toString() { return 'ZeroTrustGatewayDotEndpoint(enabled: $enabled, networks: $networks)'; } 
 }
