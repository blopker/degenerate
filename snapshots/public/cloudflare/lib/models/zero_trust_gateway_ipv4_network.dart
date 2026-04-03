// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZeroTrustGatewayIpv4Network {const ZeroTrustGatewayIpv4Network({required this.network});

factory ZeroTrustGatewayIpv4Network.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayIpv4Network(
  network: json['network'] as String,
); }

/// Specify the IPv4 address or IPv4 CIDR. Limit IPv4 CIDRs to a maximum of /24.
final String network;

Map<String, dynamic> toJson() { return {
  'network': network,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('network') && json['network'] is String; } 
ZeroTrustGatewayIpv4Network copyWith({String? network}) { return ZeroTrustGatewayIpv4Network(
  network: network ?? this.network,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayIpv4Network &&
          network == other.network; } 
@override int get hashCode { return network.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayIpv4Network(network: $network)'; } 
 }
