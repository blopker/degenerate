// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_http_service_config.dart';sealed class InfraServiceConfig {const InfraServiceConfig();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory InfraServiceConfig.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'http' => InfraServiceConfigHttp.fromJson(json),
  _ => InfraServiceConfig$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is InfraServiceConfig$Unknown; } 
 }
@immutable final class InfraServiceConfigHttp extends InfraServiceConfig {const InfraServiceConfigHttp(this.infraHttpServiceConfig);

factory InfraServiceConfigHttp.fromJson(Map<String, dynamic> json) { return InfraServiceConfigHttp(InfraHttpServiceConfig.fromJson(json)); }

final InfraHttpServiceConfig infraHttpServiceConfig;

@override String get type { return 'http'; } 
@override Map<String, dynamic> toJson() { return {...infraHttpServiceConfig.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InfraServiceConfigHttp && infraHttpServiceConfig == other.infraHttpServiceConfig; } 
@override int get hashCode { return infraHttpServiceConfig.hashCode; } 
@override String toString() { return 'InfraServiceConfigHttp(infraHttpServiceConfig: $infraHttpServiceConfig)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class InfraServiceConfig$Unknown extends InfraServiceConfig {const InfraServiceConfig$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InfraServiceConfig$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'InfraServiceConfig.unknown($json)'; } 
 }
