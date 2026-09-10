// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_dual_stack_host.dart';import 'infra_hostname_host.dart';import 'infra_i_pv4_host.dart';import 'infra_i_pv6_host.dart';import 'infra_service_host.dart';import 'infra_service_type.dart';@immutable final class InfraHttpServiceConfig {const InfraHttpServiceConfig({required this.host, required this.name, required this.type, this.createdAt, this.serviceId, this.updatedAt, this.httpPort = const Omittable.absent(), this.httpsPort = const Omittable.absent(), });

factory InfraHttpServiceConfig.fromJson(Map<String, dynamic> json) { return InfraHttpServiceConfig(
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  host: OneOf4.parse(json['host'], fromA: (v) => InfraIPv4Host.fromJson(v as Map<String, dynamic>), fromB: (v) => InfraIPv6Host.fromJson(v as Map<String, dynamic>), fromC: (v) => InfraDualStackHost.fromJson(v as Map<String, dynamic>), fromD: (v) => InfraHostnameHost.fromJson(v as Map<String, dynamic>),),
  name: json['name'] as String,
  serviceId: json['service_id'] as String?,
  type: InfraServiceType.fromJson(json['type'] as String),
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
  httpPort: json.containsKey('http_port') ? Omittable(json['http_port'] != null ? (json['http_port'] as num).toInt() : null) : const Omittable.absent(),
  httpsPort: json.containsKey('https_port') ? Omittable(json['https_port'] != null ? (json['https_port'] as num).toInt() : null) : const Omittable.absent(),
); }

final DateTime? createdAt;

final InfraServiceHost host;

final String name;

final String? serviceId;

final InfraServiceType type;

final DateTime? updatedAt;

final Omittable<int?> httpPort;

final Omittable<int?> httpsPort;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  'host': host.toJson(),
  'name': name,
  'service_id': ?serviceId,
  'type': type.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
  if (httpPort.isPresent) 'http_port': httpPort.value,
  if (httpsPort.isPresent) 'https_port': httpsPort.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('host') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('type'); } 
InfraHttpServiceConfig copyWith({DateTime? Function()? createdAt, InfraServiceHost? host, String? name, String? Function()? serviceId, InfraServiceType? type, DateTime? Function()? updatedAt, Omittable<int?>? httpPort, Omittable<int?>? httpsPort, }) { return InfraHttpServiceConfig(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  host: host ?? this.host,
  name: name ?? this.name,
  serviceId: serviceId != null ? serviceId() : this.serviceId,
  type: type ?? this.type,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  httpPort: httpPort ?? this.httpPort,
  httpsPort: httpsPort ?? this.httpsPort,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraHttpServiceConfig &&
          createdAt == other.createdAt &&
          host == other.host &&
          name == other.name &&
          serviceId == other.serviceId &&
          type == other.type &&
          updatedAt == other.updatedAt &&
          httpPort == other.httpPort &&
          httpsPort == other.httpsPort; } 
@override int get hashCode { return Object.hash(createdAt, host, name, serviceId, type, updatedAt, httpPort, httpsPort); } 
@override String toString() { return 'InfraHttpServiceConfig(createdAt: $createdAt, host: $host, name: $name, serviceId: $serviceId, type: $type, updatedAt: $updatedAt, httpPort: $httpPort, httpsPort: $httpsPort)'; } 
 }
