// GENERATED CODE - DO NOT MODIFY BY HAND

import 'infra_service_common.dart';sealed class InfraServiceConfig {const InfraServiceConfig();

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
final class InfraServiceConfigHttp extends InfraServiceConfig {const InfraServiceConfigHttp(this.infraServiceCommon);

factory InfraServiceConfigHttp.fromJson(Map<String, dynamic> json) { return InfraServiceConfigHttp(InfraServiceCommon.fromJson(json)); }

final InfraServiceCommon infraServiceCommon;

@override String get type { return 'http'; } 
@override Map<String, dynamic> toJson() { return {...infraServiceCommon.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InfraServiceConfigHttp && infraServiceCommon == other.infraServiceCommon; } 
@override int get hashCode { return infraServiceCommon.hashCode; } 
@override String toString() { return 'InfraServiceConfigHttp(infraServiceCommon: $infraServiceCommon)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class InfraServiceConfig$Unknown extends InfraServiceConfig {const InfraServiceConfig$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InfraServiceConfig$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'InfraServiceConfig.unknown($json)'; } 
 }
