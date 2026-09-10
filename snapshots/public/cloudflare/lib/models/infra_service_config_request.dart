// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_http_service_config_request.dart';sealed class InfraServiceConfigRequest {const InfraServiceConfigRequest();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory InfraServiceConfigRequest.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'infra_HttpServiceConfig' => InfraServiceConfigRequestInfraHttpServiceConfig.fromJson(json),
  'http' => InfraServiceConfigRequestHttp.fromJson(json),
  _ => InfraServiceConfigRequest$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is InfraServiceConfigRequest$Unknown; } 
 }
@immutable final class InfraServiceConfigRequestInfraHttpServiceConfig extends InfraServiceConfigRequest {const InfraServiceConfigRequestInfraHttpServiceConfig(this.infraHttpServiceConfigRequest);

factory InfraServiceConfigRequestInfraHttpServiceConfig.fromJson(Map<String, dynamic> json) { return InfraServiceConfigRequestInfraHttpServiceConfig(InfraHttpServiceConfigRequest.fromJson(json)); }

final InfraHttpServiceConfigRequest infraHttpServiceConfigRequest;

@override String get type { return 'infra_HttpServiceConfig'; } 
@override Map<String, dynamic> toJson() { return {...infraHttpServiceConfigRequest.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InfraServiceConfigRequestInfraHttpServiceConfig && infraHttpServiceConfigRequest == other.infraHttpServiceConfigRequest; } 
@override int get hashCode { return infraHttpServiceConfigRequest.hashCode; } 
@override String toString() { return 'InfraServiceConfigRequestInfraHttpServiceConfig(infraHttpServiceConfigRequest: $infraHttpServiceConfigRequest)'; } 
 }
@immutable final class InfraServiceConfigRequestHttp extends InfraServiceConfigRequest {const InfraServiceConfigRequestHttp(this.infraHttpServiceConfigRequest);

factory InfraServiceConfigRequestHttp.fromJson(Map<String, dynamic> json) { return InfraServiceConfigRequestHttp(InfraHttpServiceConfigRequest.fromJson(json)); }

final InfraHttpServiceConfigRequest infraHttpServiceConfigRequest;

@override String get type { return 'http'; } 
@override Map<String, dynamic> toJson() { return {...infraHttpServiceConfigRequest.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InfraServiceConfigRequestHttp && infraHttpServiceConfigRequest == other.infraHttpServiceConfigRequest; } 
@override int get hashCode { return infraHttpServiceConfigRequest.hashCode; } 
@override String toString() { return 'InfraServiceConfigRequestHttp(infraHttpServiceConfigRequest: $infraHttpServiceConfigRequest)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class InfraServiceConfigRequest$Unknown extends InfraServiceConfigRequest {const InfraServiceConfigRequest$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InfraServiceConfigRequest$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'InfraServiceConfigRequest.unknown($json)'; } 
 }
