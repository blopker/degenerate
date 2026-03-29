// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tunnel_config_src.dart';import 'tunnel_tunnel_name.dart';import 'tunnel_tunnel_secret.dart';final class CloudflareTunnelCreateACloudflareTunnelRequest {const CloudflareTunnelCreateACloudflareTunnelRequest({this.configSrc, required this.name, this.tunnelSecret, });

factory CloudflareTunnelCreateACloudflareTunnelRequest.fromJson(Map<String, dynamic> json) { return CloudflareTunnelCreateACloudflareTunnelRequest(
  configSrc: json['config_src'] != null ? TunnelConfigSrc.fromJson(json['config_src'] as String) : null,
  name: TunnelTunnelName.fromJson(json['name'] as String),
  tunnelSecret: json['tunnel_secret'] != null ? TunnelTunnelSecret.fromJson(json['tunnel_secret'] as String) : null,
); }

/// Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard.
final TunnelConfigSrc? configSrc;

/// A user-friendly name for a tunnel.
final TunnelTunnelName name;

/// Sets the password required to run a locally-managed tunnel. Must be at least 32 bytes and encoded as a base64 string.
final TunnelTunnelSecret? tunnelSecret;

Map<String, dynamic> toJson() { return {
  if (configSrc != null) 'config_src': configSrc?.toJson(),
  'name': name.toJson(),
  if (tunnelSecret != null) 'tunnel_secret': tunnelSecret?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name'); } 
CloudflareTunnelCreateACloudflareTunnelRequest copyWith({TunnelConfigSrc Function()? configSrc, TunnelTunnelName? name, TunnelTunnelSecret Function()? tunnelSecret, }) { return CloudflareTunnelCreateACloudflareTunnelRequest(
  configSrc: configSrc != null ? configSrc() : this.configSrc,
  name: name ?? this.name,
  tunnelSecret: tunnelSecret != null ? tunnelSecret() : this.tunnelSecret,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflareTunnelCreateACloudflareTunnelRequest &&
          configSrc == other.configSrc &&
          name == other.name &&
          tunnelSecret == other.tunnelSecret; } 
@override int get hashCode { return Object.hash(configSrc, name, tunnelSecret); } 
@override String toString() { return 'CloudflareTunnelCreateACloudflareTunnelRequest(configSrc: $configSrc, name: $name, tunnelSecret: $tunnelSecret)'; } 
 }
