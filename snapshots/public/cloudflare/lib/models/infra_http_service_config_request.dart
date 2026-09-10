// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_dual_stack_host.dart';import 'infra_hostname_host.dart';import 'infra_i_pv4_host.dart';import 'infra_i_pv6_host.dart';import 'infra_service_host.dart';import 'infra_service_type.dart';@immutable final class InfraHttpServiceConfigRequest {const InfraHttpServiceConfigRequest({required this.host, required this.name, required this.type, this.httpPort = const Omittable.absent(), this.httpsPort = const Omittable.absent(), });

factory InfraHttpServiceConfigRequest.fromJson(Map<String, dynamic> json) { return InfraHttpServiceConfigRequest(
  host: OneOf4.parse(json['host'], fromA: (v) => InfraIPv4Host.fromJson(v as Map<String, dynamic>), fromB: (v) => InfraIPv6Host.fromJson(v as Map<String, dynamic>), fromC: (v) => InfraDualStackHost.fromJson(v as Map<String, dynamic>), fromD: (v) => InfraHostnameHost.fromJson(v as Map<String, dynamic>),),
  name: json['name'] as String,
  type: InfraServiceType.fromJson(json['type'] as String),
  httpPort: json.containsKey('http_port') ? Omittable(json['http_port'] != null ? (json['http_port'] as num).toInt() : null) : const Omittable.absent(),
  httpsPort: json.containsKey('https_port') ? Omittable(json['https_port'] != null ? (json['https_port'] as num).toInt() : null) : const Omittable.absent(),
); }

final InfraServiceHost host;

final String name;

final InfraServiceType type;

final Omittable<int?> httpPort;

final Omittable<int?> httpsPort;

Map<String, dynamic> toJson() { return {
  'host': host.toJson(),
  'name': name,
  'type': type.toJson(),
  if (httpPort.isPresent) 'http_port': httpPort.value,
  if (httpsPort.isPresent) 'https_port': httpsPort.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('host') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('type'); } 
InfraHttpServiceConfigRequest copyWith({InfraServiceHost? host, String? name, InfraServiceType? type, Omittable<int?>? httpPort, Omittable<int?>? httpsPort, }) { return InfraHttpServiceConfigRequest(
  host: host ?? this.host,
  name: name ?? this.name,
  type: type ?? this.type,
  httpPort: httpPort ?? this.httpPort,
  httpsPort: httpsPort ?? this.httpsPort,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraHttpServiceConfigRequest &&
          host == other.host &&
          name == other.name &&
          type == other.type &&
          httpPort == other.httpPort &&
          httpsPort == other.httpsPort; } 
@override int get hashCode { return Object.hash(host, name, type, httpPort, httpsPort); } 
@override String toString() { return 'InfraHttpServiceConfigRequest(host: $host, name: $name, type: $type, httpPort: $httpPort, httpsPort: $httpsPort)'; } 
 }
