// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_dual_stack_host.dart';import 'infra_hostname_host.dart';import 'infra_i_pv4_host.dart';import 'infra_i_pv6_host.dart';import 'infra_service_host.dart';import 'infra_service_type.dart';@immutable final class InfraServiceCommonRequest {const InfraServiceCommonRequest({required this.host, required this.name, required this.type, });

factory InfraServiceCommonRequest.fromJson(Map<String, dynamic> json) { return InfraServiceCommonRequest(
  host: OneOf4.parse(json['host'], fromA: (v) => InfraIPv4Host.fromJson(v as Map<String, dynamic>), fromB: (v) => InfraIPv6Host.fromJson(v as Map<String, dynamic>), fromC: (v) => InfraDualStackHost.fromJson(v as Map<String, dynamic>), fromD: (v) => InfraHostnameHost.fromJson(v as Map<String, dynamic>),),
  name: json['name'] as String,
  type: InfraServiceType.fromJson(json['type'] as String),
); }

final InfraServiceHost host;

final String name;

final InfraServiceType type;

Map<String, dynamic> toJson() { return {
  'host': host.toJson(),
  'name': name,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('host') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('type'); } 
InfraServiceCommonRequest copyWith({InfraServiceHost? host, String? name, InfraServiceType? type, }) { return InfraServiceCommonRequest(
  host: host ?? this.host,
  name: name ?? this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraServiceCommonRequest &&
          host == other.host &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(host, name, type); } 
@override String toString() { return 'InfraServiceCommonRequest(host: $host, name: $name, type: $type)'; } 
 }
