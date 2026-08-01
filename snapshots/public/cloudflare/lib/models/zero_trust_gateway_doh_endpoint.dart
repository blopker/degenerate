// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_ip_network.dart';@immutable final class ZeroTrustGatewayDohEndpoint {const ZeroTrustGatewayDohEndpoint({this.enabled, this.networks = const Omittable.absent(), this.requireToken, });

factory ZeroTrustGatewayDohEndpoint.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayDohEndpoint(
  enabled: json['enabled'] as bool?,
  networks: json.containsKey('networks') ? Omittable((json['networks'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayIpNetwork.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  requireToken: json['require_token'] as bool?,
); }

/// Indicate whether the DOH endpoint is enabled for this location.
final bool? enabled;

final Omittable<List<ZeroTrustGatewayIpNetwork>?> networks;

/// Specify whether the DOH endpoint requires user identity authentication.
final bool? requireToken;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  if (networks.isPresent) 'networks': networks.value?.map((e) => e.toJson()).toList(),
  'require_token': ?requireToken,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'networks', 'require_token'}.contains(key)); } 
ZeroTrustGatewayDohEndpoint copyWith({bool? Function()? enabled, Omittable<List<ZeroTrustGatewayIpNetwork>?>? networks, bool? Function()? requireToken, }) { return ZeroTrustGatewayDohEndpoint(
  enabled: enabled != null ? enabled() : this.enabled,
  networks: networks ?? this.networks,
  requireToken: requireToken != null ? requireToken() : this.requireToken,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayDohEndpoint &&
          enabled == other.enabled &&
          networks.isPresent == other.networks.isPresent &&
          listEquals(networks.value, other.networks.value) &&
          requireToken == other.requireToken; } 
@override int get hashCode { return Object.hash(enabled, Object.hashAll(networks.value ?? const []), requireToken); } 
@override String toString() { return 'ZeroTrustGatewayDohEndpoint(enabled: $enabled, networks: $networks, requireToken: $requireToken)'; } 
 }
