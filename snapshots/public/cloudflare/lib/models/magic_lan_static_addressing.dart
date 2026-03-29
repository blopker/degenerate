// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_cidr.dart';import 'magic_lan_dhcp_relay.dart';import 'magic_lan_dhcp_server.dart';/// If the site is not configured in high availability mode, this configuration is optional (if omitted, use DHCP). However, if in high availability mode, static_address is required along with secondary and virtual address.
final class MagicLanStaticAddressing {const MagicLanStaticAddressing({required this.address, this.dhcpRelay, this.dhcpServer, this.secondaryAddress, this.virtualAddress, });

factory MagicLanStaticAddressing.fromJson(Map<String, dynamic> json) { return MagicLanStaticAddressing(
  address: MagicCidr.fromJson(json['address'] as String),
  dhcpRelay: json['dhcp_relay'] != null ? MagicLanDhcpRelay.fromJson(json['dhcp_relay'] as Map<String, dynamic>) : null,
  dhcpServer: json['dhcp_server'] != null ? MagicLanDhcpServer.fromJson(json['dhcp_server'] as Map<String, dynamic>) : null,
  secondaryAddress: json['secondary_address'] != null ? MagicCidr.fromJson(json['secondary_address'] as String) : null,
  virtualAddress: json['virtual_address'] != null ? MagicCidr.fromJson(json['virtual_address'] as String) : null,
); }

/// A valid CIDR notation representing an IP range.
final MagicCidr address;

final MagicLanDhcpRelay? dhcpRelay;

final MagicLanDhcpServer? dhcpServer;

/// A valid CIDR notation representing an IP range.
final MagicCidr? secondaryAddress;

/// A valid CIDR notation representing an IP range.
final MagicCidr? virtualAddress;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  if (dhcpRelay != null) 'dhcp_relay': dhcpRelay?.toJson(),
  if (dhcpServer != null) 'dhcp_server': dhcpServer?.toJson(),
  if (secondaryAddress != null) 'secondary_address': secondaryAddress?.toJson(),
  if (virtualAddress != null) 'virtual_address': virtualAddress?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address'); } 
MagicLanStaticAddressing copyWith({MagicCidr? address, MagicLanDhcpRelay Function()? dhcpRelay, MagicLanDhcpServer Function()? dhcpServer, MagicCidr Function()? secondaryAddress, MagicCidr Function()? virtualAddress, }) { return MagicLanStaticAddressing(
  address: address ?? this.address,
  dhcpRelay: dhcpRelay != null ? dhcpRelay() : this.dhcpRelay,
  dhcpServer: dhcpServer != null ? dhcpServer() : this.dhcpServer,
  secondaryAddress: secondaryAddress != null ? secondaryAddress() : this.secondaryAddress,
  virtualAddress: virtualAddress != null ? virtualAddress() : this.virtualAddress,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicLanStaticAddressing &&
          address == other.address &&
          dhcpRelay == other.dhcpRelay &&
          dhcpServer == other.dhcpServer &&
          secondaryAddress == other.secondaryAddress &&
          virtualAddress == other.virtualAddress; } 
@override int get hashCode { return Object.hash(address, dhcpRelay, dhcpServer, secondaryAddress, virtualAddress); } 
@override String toString() { return 'MagicLanStaticAddressing(address: $address, dhcpRelay: $dhcpRelay, dhcpServer: $dhcpServer, secondaryAddress: $secondaryAddress, virtualAddress: $virtualAddress)'; } 
 }
