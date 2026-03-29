// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tunnel_tunnel_name.dart';import 'tunnel_tunnel_secret.dart';final class CloudflareTunnelUpdateACloudflareTunnelRequest {const CloudflareTunnelUpdateACloudflareTunnelRequest({this.name, this.tunnelSecret, });

factory CloudflareTunnelUpdateACloudflareTunnelRequest.fromJson(Map<String, dynamic> json) { return CloudflareTunnelUpdateACloudflareTunnelRequest(
  name: json['name'] != null ? TunnelTunnelName.fromJson(json['name'] as String) : null,
  tunnelSecret: json['tunnel_secret'] != null ? TunnelTunnelSecret.fromJson(json['tunnel_secret'] as String) : null,
); }

/// A user-friendly name for a tunnel.
final TunnelTunnelName? name;

/// Sets the password required to run a locally-managed tunnel. Must be at least 32 bytes and encoded as a base64 string.
final TunnelTunnelSecret? tunnelSecret;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
  if (tunnelSecret != null) 'tunnel_secret': tunnelSecret?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CloudflareTunnelUpdateACloudflareTunnelRequest copyWith({TunnelTunnelName Function()? name, TunnelTunnelSecret Function()? tunnelSecret, }) { return CloudflareTunnelUpdateACloudflareTunnelRequest(
  name: name != null ? name() : this.name,
  tunnelSecret: tunnelSecret != null ? tunnelSecret() : this.tunnelSecret,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflareTunnelUpdateACloudflareTunnelRequest &&
          name == other.name &&
          tunnelSecret == other.tunnelSecret; } 
@override int get hashCode { return Object.hash(name, tunnelSecret); } 
@override String toString() { return 'CloudflareTunnelUpdateACloudflareTunnelRequest(name: $name, tunnelSecret: $tunnelSecret)'; } 
 }
