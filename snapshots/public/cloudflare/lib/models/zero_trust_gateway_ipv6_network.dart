// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZeroTrustGatewayIpv6Network {const ZeroTrustGatewayIpv6Network({required this.network});

factory ZeroTrustGatewayIpv6Network.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayIpv6Network(
  network: json['network'] as String,
); }

/// Specify the IPv6 address or IPv6 CIDR.
final String network;

Map<String, dynamic> toJson() { return {
  'network': network,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('network') && json['network'] is String; } 
ZeroTrustGatewayIpv6Network copyWith({String? network}) { return ZeroTrustGatewayIpv6Network(
  network: network ?? this.network,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayIpv6Network &&
          network == other.network; } 
@override int get hashCode { return network.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayIpv6Network(network: $network)'; } 
 }
