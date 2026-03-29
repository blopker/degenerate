// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_split_tunnel_description.dart';/// The domain name to exclude from the tunnel. If `host` is present, `address` must not be present.
extension type const TeamsDevicesSplitTunnelHost(String value) {
factory TeamsDevicesSplitTunnelHost.fromJson(String json) => TeamsDevicesSplitTunnelHost(json);

String toJson() => value;

}
final class TeamsDevicesExcludeSplitTunnelWithHost {const TeamsDevicesExcludeSplitTunnelWithHost({this.description, required this.host, });

factory TeamsDevicesExcludeSplitTunnelWithHost.fromJson(Map<String, dynamic> json) { return TeamsDevicesExcludeSplitTunnelWithHost(
  description: json['description'] != null ? TeamsDevicesSplitTunnelDescription.fromJson(json['description'] as String) : null,
  host: TeamsDevicesSplitTunnelHost.fromJson(json['host'] as String),
); }

final TeamsDevicesSplitTunnelDescription? description;

final TeamsDevicesSplitTunnelHost host;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  'host': host.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('host'); } 
TeamsDevicesExcludeSplitTunnelWithHost copyWith({TeamsDevicesSplitTunnelDescription Function()? description, TeamsDevicesSplitTunnelHost? host, }) { return TeamsDevicesExcludeSplitTunnelWithHost(
  description: description != null ? description() : this.description,
  host: host ?? this.host,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesExcludeSplitTunnelWithHost &&
          description == other.description &&
          host == other.host; } 
@override int get hashCode { return Object.hash(description, host); } 
@override String toString() { return 'TeamsDevicesExcludeSplitTunnelWithHost(description: $description, host: $host)'; } 
 }
