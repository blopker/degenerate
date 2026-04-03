// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_network.dart';@immutable final class InfraIPv6Host {const InfraIPv6Host({required this.ipv6, required this.network, });

factory InfraIPv6Host.fromJson(Map<String, dynamic> json) { return InfraIPv6Host(
  ipv6: json['ipv6'] as String,
  network: InfraNetwork.fromJson(json['network'] as Map<String, dynamic>),
); }

final String ipv6;

final InfraNetwork network;

Map<String, dynamic> toJson() { return {
  'ipv6': ipv6,
  'network': network.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ipv6') && json['ipv6'] is String &&
      json.containsKey('network'); } 
InfraIPv6Host copyWith({String? ipv6, InfraNetwork? network, }) { return InfraIPv6Host(
  ipv6: ipv6 ?? this.ipv6,
  network: network ?? this.network,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraIPv6Host &&
          ipv6 == other.ipv6 &&
          network == other.network; } 
@override int get hashCode { return Object.hash(ipv6, network); } 
@override String toString() { return 'InfraIPv6Host(ipv6: $ipv6, network: $network)'; } 
 }
