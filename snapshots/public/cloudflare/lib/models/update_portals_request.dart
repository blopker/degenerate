// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_portals_request_servers.dart';final class UpdatePortalsRequest {const UpdatePortalsRequest({this.description, this.hostname, this.name, this.secureWebGateway, this.servers, });

factory UpdatePortalsRequest.fromJson(Map<String, dynamic> json) { return UpdatePortalsRequest(
  description: json['description'] as String?,
  hostname: json['hostname'] as String?,
  name: json['name'] as String?,
  secureWebGateway: json['secure_web_gateway'] as bool?,
  servers: (json['servers'] as List<dynamic>?)?.map((e) => UpdatePortalsRequestServers.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String? description;

final String? hostname;

final String? name;

/// Route outbound MCP traffic through Zero Trust Secure Web Gateway
final bool? secureWebGateway;

final List<UpdatePortalsRequestServers>? servers;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'hostname': ?hostname,
  'name': ?name,
  'secure_web_gateway': ?secureWebGateway,
  if (servers != null) 'servers': servers?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'hostname', 'name', 'secure_web_gateway', 'servers'}.contains(key)); } 
UpdatePortalsRequest copyWith({String Function()? description, String Function()? hostname, String Function()? name, bool Function()? secureWebGateway, List<UpdatePortalsRequestServers> Function()? servers, }) { return UpdatePortalsRequest(
  description: description != null ? description() : this.description,
  hostname: hostname != null ? hostname() : this.hostname,
  name: name != null ? name() : this.name,
  secureWebGateway: secureWebGateway != null ? secureWebGateway() : this.secureWebGateway,
  servers: servers != null ? servers() : this.servers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdatePortalsRequest &&
          description == other.description &&
          hostname == other.hostname &&
          name == other.name &&
          secureWebGateway == other.secureWebGateway &&
          listEquals(servers, other.servers); } 
@override int get hashCode { return Object.hash(description, hostname, name, secureWebGateway, Object.hashAll(servers ?? const [])); } 
@override String toString() { return 'UpdatePortalsRequest(description: $description, hostname: $hostname, name: $name, secureWebGateway: $secureWebGateway, servers: $servers)'; } 
 }
