// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_components_schemas_name.dart';import 'secondary_dns_ip.dart';import 'secondary_dns_ixfr_enable.dart';import 'secondary_dns_port.dart';import 'secondary_dns_tsig_id.dart';@immutable final class SecondaryDnsPeerRequest {const SecondaryDnsPeerRequest({required this.name, this.ip, this.ixfrEnable, this.port, this.tsigId, });

factory SecondaryDnsPeerRequest.fromJson(Map<String, dynamic> json) { return SecondaryDnsPeerRequest(
  ip: json['ip'] != null ? SecondaryDnsIp.fromJson(json['ip'] as String) : null,
  ixfrEnable: json['ixfr_enable'] != null ? SecondaryDnsIxfrEnable.fromJson(json['ixfr_enable'] as bool) : null,
  name: SecondaryDnsComponentsSchemasName.fromJson(json['name'] as String),
  port: json['port'] != null ? SecondaryDnsPort.fromJson(json['port'] as num) : null,
  tsigId: json['tsig_id'] != null ? SecondaryDnsTsigId.fromJson(json['tsig_id'] as String) : null,
); }

/// IPv4/IPv6 address of primary or secondary nameserver, depending on what zone this peer is linked to. For primary zones this IP defines the IP of the secondary nameserver Cloudflare will NOTIFY upon zone changes. For secondary zones this IP defines the IP of the primary nameserver Cloudflare will send AXFR/IXFR requests to.
final SecondaryDnsIp? ip;

/// Enable IXFR transfer protocol, default is AXFR. Only applicable to secondary zones.
final SecondaryDnsIxfrEnable? ixfrEnable;

/// The name of the peer.
final SecondaryDnsComponentsSchemasName name;

/// DNS port of primary or secondary nameserver, depending on what zone this peer is linked to.
final SecondaryDnsPort? port;

/// TSIG authentication will be used for zone transfer if configured.
final SecondaryDnsTsigId? tsigId;

Map<String, dynamic> toJson() { return {
  if (ip != null) 'ip': ip?.toJson(),
  if (ixfrEnable != null) 'ixfr_enable': ixfrEnable?.toJson(),
  'name': name.toJson(),
  if (port != null) 'port': port?.toJson(),
  if (tsigId != null) 'tsig_id': tsigId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name'); } 
SecondaryDnsPeerRequest copyWith({SecondaryDnsIp? Function()? ip, SecondaryDnsIxfrEnable? Function()? ixfrEnable, SecondaryDnsComponentsSchemasName? name, SecondaryDnsPort? Function()? port, SecondaryDnsTsigId? Function()? tsigId, }) { return SecondaryDnsPeerRequest(
  ip: ip != null ? ip() : this.ip,
  ixfrEnable: ixfrEnable != null ? ixfrEnable() : this.ixfrEnable,
  name: name ?? this.name,
  port: port != null ? port() : this.port,
  tsigId: tsigId != null ? tsigId() : this.tsigId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsPeerRequest &&
          ip == other.ip &&
          ixfrEnable == other.ixfrEnable &&
          name == other.name &&
          port == other.port &&
          tsigId == other.tsigId; } 
@override int get hashCode { return Object.hash(ip, ixfrEnable, name, port, tsigId); } 
@override String toString() { return 'SecondaryDnsPeerRequest(ip: $ip, ixfrEnable: $ixfrEnable, name: $name, port: $port, tsigId: $tsigId)'; } 
 }
