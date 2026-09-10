// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_ip_network.dart';@immutable final class ZeroTrustGatewayDotEndpoint {const ZeroTrustGatewayDotEndpoint({this.enabled, this.networks = const Omittable.absent(), });

factory ZeroTrustGatewayDotEndpoint.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayDotEndpoint(
  enabled: json['enabled'] as bool?,
  networks: json.containsKey('networks') ? Omittable((json['networks'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayIpNetwork.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
); }

/// Indicate whether the DOT endpoint is enabled for this location.
final bool? enabled;

final Omittable<List<ZeroTrustGatewayIpNetwork>?> networks;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  if (networks.isPresent) 'networks': networks.value?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'networks'}.contains(key)); } 
ZeroTrustGatewayDotEndpoint copyWith({bool? Function()? enabled, Omittable<List<ZeroTrustGatewayIpNetwork>?>? networks, }) { return ZeroTrustGatewayDotEndpoint(
  enabled: enabled != null ? enabled() : this.enabled,
  networks: networks ?? this.networks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayDotEndpoint &&
          enabled == other.enabled &&
          networks.isPresent == other.networks.isPresent &&
          listEquals(networks.value, other.networks.value); } 
@override int get hashCode { return Object.hash(enabled, Object.hashAll(networks.value ?? const [])); } 
@override String toString() { return 'ZeroTrustGatewayDotEndpoint(enabled: $enabled, networks: $networks)'; } 
 }
