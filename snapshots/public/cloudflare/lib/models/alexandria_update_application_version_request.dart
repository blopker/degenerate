// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AlexandriaUpdateApplicationVersionRequest {const AlexandriaUpdateApplicationVersionRequest({this.hostnames, this.ipSubnets, this.portProtocols, this.supportDomains, });

factory AlexandriaUpdateApplicationVersionRequest.fromJson(Map<String, dynamic> json) { return AlexandriaUpdateApplicationVersionRequest(
  hostnames: (json['hostnames'] as List<dynamic>?)?.map((e) => e as String).toList(),
  ipSubnets: (json['ip_subnets'] as List<dynamic>?)?.map((e) => e as String).toList(),
  portProtocols: (json['port_protocols'] as List<dynamic>?)?.map((e) => e as String).toList(),
  supportDomains: (json['support_domains'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Returns the list of hostnames for the application.
final List<String>? hostnames;

/// Returns the list of IP subnets for the application.
final List<String>? ipSubnets;

/// Returns the list of port protocols for the application.
final List<String>? portProtocols;

/// Returns the list of support domains for the application.
final List<String>? supportDomains;

Map<String, dynamic> toJson() { return {
  'hostnames': ?hostnames,
  'ip_subnets': ?ipSubnets,
  'port_protocols': ?portProtocols,
  'support_domains': ?supportDomains,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AlexandriaUpdateApplicationVersionRequest copyWith({List<String> Function()? hostnames, List<String> Function()? ipSubnets, List<String> Function()? portProtocols, List<String> Function()? supportDomains, }) { return AlexandriaUpdateApplicationVersionRequest(
  hostnames: hostnames != null ? hostnames() : this.hostnames,
  ipSubnets: ipSubnets != null ? ipSubnets() : this.ipSubnets,
  portProtocols: portProtocols != null ? portProtocols() : this.portProtocols,
  supportDomains: supportDomains != null ? supportDomains() : this.supportDomains,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AlexandriaUpdateApplicationVersionRequest &&
          listEquals(hostnames, other.hostnames) &&
          listEquals(ipSubnets, other.ipSubnets) &&
          listEquals(portProtocols, other.portProtocols) &&
          listEquals(supportDomains, other.supportDomains); } 
@override int get hashCode { return Object.hash(Object.hashAll(hostnames ?? const []), Object.hashAll(ipSubnets ?? const []), Object.hashAll(portProtocols ?? const []), Object.hashAll(supportDomains ?? const [])); } 
@override String toString() { return 'AlexandriaUpdateApplicationVersionRequest(hostnames: $hostnames, ipSubnets: $ipSubnets, portProtocols: $portProtocols, supportDomains: $supportDomains)'; } 
 }
