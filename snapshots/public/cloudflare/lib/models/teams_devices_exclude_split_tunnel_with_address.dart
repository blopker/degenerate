// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_split_tunnel_description.dart';/// The address in CIDR format to exclude from the tunnel. If `address` is present, `host` must not be present.
extension type const TeamsDevicesSplitTunnelAddress(String value) {
factory TeamsDevicesSplitTunnelAddress.fromJson(String json) => TeamsDevicesSplitTunnelAddress(json);

String toJson() => value;

}
final class TeamsDevicesExcludeSplitTunnelWithAddress {const TeamsDevicesExcludeSplitTunnelWithAddress({required this.address, this.description, });

factory TeamsDevicesExcludeSplitTunnelWithAddress.fromJson(Map<String, dynamic> json) { return TeamsDevicesExcludeSplitTunnelWithAddress(
  address: TeamsDevicesSplitTunnelAddress.fromJson(json['address'] as String),
  description: json['description'] != null ? TeamsDevicesSplitTunnelDescription.fromJson(json['description'] as String) : null,
); }

final TeamsDevicesSplitTunnelAddress address;

final TeamsDevicesSplitTunnelDescription? description;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  if (description != null) 'description': description?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address'); } 
TeamsDevicesExcludeSplitTunnelWithAddress copyWith({TeamsDevicesSplitTunnelAddress? address, TeamsDevicesSplitTunnelDescription Function()? description, }) { return TeamsDevicesExcludeSplitTunnelWithAddress(
  address: address ?? this.address,
  description: description != null ? description() : this.description,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesExcludeSplitTunnelWithAddress &&
          address == other.address &&
          description == other.description; } 
@override int get hashCode { return Object.hash(address, description); } 
@override String toString() { return 'TeamsDevicesExcludeSplitTunnelWithAddress(address: $address, description: $description)'; } 
 }
