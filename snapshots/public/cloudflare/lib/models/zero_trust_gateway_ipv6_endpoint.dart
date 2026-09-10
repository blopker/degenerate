// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_ipv6_network.dart';@immutable final class ZeroTrustGatewayIpv6Endpoint {const ZeroTrustGatewayIpv6Endpoint({this.enabled, this.networks = const Omittable.absent(), });

factory ZeroTrustGatewayIpv6Endpoint.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayIpv6Endpoint(
  enabled: json['enabled'] as bool?,
  networks: json.containsKey('networks') ? Omittable((json['networks'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayIpv6Network.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
); }

/// Indicate whether the IPV6 endpoint is enabled for this location.
final bool? enabled;

final Omittable<List<ZeroTrustGatewayIpv6Network>?> networks;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  if (networks.isPresent) 'networks': networks.value?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'networks'}.contains(key)); } 
ZeroTrustGatewayIpv6Endpoint copyWith({bool? Function()? enabled, Omittable<List<ZeroTrustGatewayIpv6Network>?>? networks, }) { return ZeroTrustGatewayIpv6Endpoint(
  enabled: enabled != null ? enabled() : this.enabled,
  networks: networks ?? this.networks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayIpv6Endpoint &&
          enabled == other.enabled &&
          networks.isPresent == other.networks.isPresent &&
          listEquals(networks.value, other.networks.value); } 
@override int get hashCode { return Object.hash(enabled, Object.hashAll(networks.value ?? const [])); } 
@override String toString() { return 'ZeroTrustGatewayIpv6Endpoint(enabled: $enabled, networks: $networks)'; } 
 }
