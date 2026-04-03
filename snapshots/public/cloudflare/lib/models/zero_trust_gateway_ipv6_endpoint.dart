// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_ipv6_network.dart';@immutable final class ZeroTrustGatewayIpv6Endpoint {const ZeroTrustGatewayIpv6Endpoint({this.enabled, this.networks, });

factory ZeroTrustGatewayIpv6Endpoint.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayIpv6Endpoint(
  enabled: json['enabled'] as bool?,
  networks: (json['networks'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayIpv6Network.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Indicate whether the IPV6 endpoint is enabled for this location.
final bool? enabled;

final List<ZeroTrustGatewayIpv6Network>? networks;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  if (networks != null) 'networks': networks?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'networks'}.contains(key)); } 
ZeroTrustGatewayIpv6Endpoint copyWith({bool Function()? enabled, List<ZeroTrustGatewayIpv6Network>? Function()? networks, }) { return ZeroTrustGatewayIpv6Endpoint(
  enabled: enabled != null ? enabled() : this.enabled,
  networks: networks != null ? networks() : this.networks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayIpv6Endpoint &&
          enabled == other.enabled &&
          listEquals(networks, other.networks); } 
@override int get hashCode { return Object.hash(enabled, Object.hashAll(networks ?? const [])); } 
@override String toString() { return 'ZeroTrustGatewayIpv6Endpoint(enabled: $enabled, networks: $networks)'; } 
 }
