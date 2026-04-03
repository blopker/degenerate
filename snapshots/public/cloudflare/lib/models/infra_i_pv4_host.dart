// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_network.dart';@immutable final class InfraIPv4Host {const InfraIPv4Host({required this.ipv4, required this.network, });

factory InfraIPv4Host.fromJson(Map<String, dynamic> json) { return InfraIPv4Host(
  ipv4: json['ipv4'] as String,
  network: InfraNetwork.fromJson(json['network'] as Map<String, dynamic>),
); }

final String ipv4;

final InfraNetwork network;

Map<String, dynamic> toJson() { return {
  'ipv4': ipv4,
  'network': network.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ipv4') && json['ipv4'] is String &&
      json.containsKey('network'); } 
InfraIPv4Host copyWith({String? ipv4, InfraNetwork? network, }) { return InfraIPv4Host(
  ipv4: ipv4 ?? this.ipv4,
  network: network ?? this.network,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraIPv4Host &&
          ipv4 == other.ipv4 &&
          network == other.network; } 
@override int get hashCode { return Object.hash(ipv4, network); } 
@override String toString() { return 'InfraIPv4Host(ipv4: $ipv4, network: $network)'; } 
 }
