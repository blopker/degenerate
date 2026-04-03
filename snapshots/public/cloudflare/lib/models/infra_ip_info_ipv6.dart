// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The target's IPv6 address
@immutable final class InfraIpInfoIpv6 {const InfraIpInfoIpv6({this.ipAddr, this.virtualNetworkId, });

factory InfraIpInfoIpv6.fromJson(Map<String, dynamic> json) { return InfraIpInfoIpv6(
  ipAddr: json['ip_addr'] as String?,
  virtualNetworkId: json['virtual_network_id'] as String?,
); }

/// IP address of the target
final String? ipAddr;

/// (optional) Private virtual network identifier for the target. If omitted, the default virtual network ID will be used.
final String? virtualNetworkId;

Map<String, dynamic> toJson() { return {
  'ip_addr': ?ipAddr,
  'virtual_network_id': ?virtualNetworkId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ip_addr', 'virtual_network_id'}.contains(key)); } 
InfraIpInfoIpv6 copyWith({String Function()? ipAddr, String Function()? virtualNetworkId, }) { return InfraIpInfoIpv6(
  ipAddr: ipAddr != null ? ipAddr() : this.ipAddr,
  virtualNetworkId: virtualNetworkId != null ? virtualNetworkId() : this.virtualNetworkId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraIpInfoIpv6 &&
          ipAddr == other.ipAddr &&
          virtualNetworkId == other.virtualNetworkId; } 
@override int get hashCode { return Object.hash(ipAddr, virtualNetworkId); } 
@override String toString() { return 'InfraIpInfoIpv6(ipAddr: $ipAddr, virtualNetworkId: $virtualNetworkId)'; } 
 }
