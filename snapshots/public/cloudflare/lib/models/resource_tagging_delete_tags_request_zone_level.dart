// GENERATED CODE - DO NOT MODIFY BY HAND

import 'resource_tagging_delete_tags_request_zone_level_base.dart';/// Request body schema for deleting tags from zone-level resources.
sealed class ResourceTaggingDeleteTagsRequestZoneLevel {const ResourceTaggingDeleteTagsRequestZoneLevel();

/// Deserialize from JSON, dispatching on the `resource_type` discriminator.
factory ResourceTaggingDeleteTagsRequestZoneLevel.fromJson(Map<String, dynamic> json) { return switch (json['resource_type']) {
  'access_application_policy' => ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy.fromJson(json),
  'api_gateway_operation' => ResourceTaggingDeleteTagsRequestZoneLevelGatewayOperation.fromJson(json),
  'custom_certificate' => ResourceTaggingDeleteTagsRequestZoneLevelCustomCertificate.fromJson(json),
  'custom_hostname' => ResourceTaggingDeleteTagsRequestZoneLevelCustomHostname.fromJson(json),
  'dns_record' => ResourceTaggingDeleteTagsRequestZoneLevelDnsRecord.fromJson(json),
  'managed_client_certificate' => ResourceTaggingDeleteTagsRequestZoneLevelManagedClientCertificate.fromJson(json),
  'zone' => ResourceTaggingDeleteTagsRequestZoneLevelZone.fromJson(json),
  _ => ResourceTaggingDeleteTagsRequestZoneLevel$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get resourceType;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ResourceTaggingDeleteTagsRequestZoneLevel$Unknown; } 
 }
final class ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy extends ResourceTaggingDeleteTagsRequestZoneLevel {const ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy(this.resourceTaggingDeleteTagsRequestZoneLevelBase);

factory ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy.fromJson(Map<String, dynamic> json) { return ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy(ResourceTaggingDeleteTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingDeleteTagsRequestZoneLevelBase resourceTaggingDeleteTagsRequestZoneLevelBase;

@override String get resourceType { return 'access_application_policy'; } 
@override Map<String, dynamic> toJson() { return {'resource_type': resourceType, ...resourceTaggingDeleteTagsRequestZoneLevelBase.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy && resourceTaggingDeleteTagsRequestZoneLevelBase == other.resourceTaggingDeleteTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingDeleteTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingDeleteTagsRequestZoneLevelAccessApplicationPolicy(resourceTaggingDeleteTagsRequestZoneLevelBase: $resourceTaggingDeleteTagsRequestZoneLevelBase)'; } 
 }
final class ResourceTaggingDeleteTagsRequestZoneLevelGatewayOperation extends ResourceTaggingDeleteTagsRequestZoneLevel {const ResourceTaggingDeleteTagsRequestZoneLevelGatewayOperation(this.resourceTaggingDeleteTagsRequestZoneLevelBase);

factory ResourceTaggingDeleteTagsRequestZoneLevelGatewayOperation.fromJson(Map<String, dynamic> json) { return ResourceTaggingDeleteTagsRequestZoneLevelGatewayOperation(ResourceTaggingDeleteTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingDeleteTagsRequestZoneLevelBase resourceTaggingDeleteTagsRequestZoneLevelBase;

@override String get resourceType { return 'api_gateway_operation'; } 
@override Map<String, dynamic> toJson() { return {'resource_type': resourceType, ...resourceTaggingDeleteTagsRequestZoneLevelBase.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingDeleteTagsRequestZoneLevelGatewayOperation && resourceTaggingDeleteTagsRequestZoneLevelBase == other.resourceTaggingDeleteTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingDeleteTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingDeleteTagsRequestZoneLevelGatewayOperation(resourceTaggingDeleteTagsRequestZoneLevelBase: $resourceTaggingDeleteTagsRequestZoneLevelBase)'; } 
 }
final class ResourceTaggingDeleteTagsRequestZoneLevelCustomCertificate extends ResourceTaggingDeleteTagsRequestZoneLevel {const ResourceTaggingDeleteTagsRequestZoneLevelCustomCertificate(this.resourceTaggingDeleteTagsRequestZoneLevelBase);

factory ResourceTaggingDeleteTagsRequestZoneLevelCustomCertificate.fromJson(Map<String, dynamic> json) { return ResourceTaggingDeleteTagsRequestZoneLevelCustomCertificate(ResourceTaggingDeleteTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingDeleteTagsRequestZoneLevelBase resourceTaggingDeleteTagsRequestZoneLevelBase;

@override String get resourceType { return 'custom_certificate'; } 
@override Map<String, dynamic> toJson() { return {'resource_type': resourceType, ...resourceTaggingDeleteTagsRequestZoneLevelBase.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingDeleteTagsRequestZoneLevelCustomCertificate && resourceTaggingDeleteTagsRequestZoneLevelBase == other.resourceTaggingDeleteTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingDeleteTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingDeleteTagsRequestZoneLevelCustomCertificate(resourceTaggingDeleteTagsRequestZoneLevelBase: $resourceTaggingDeleteTagsRequestZoneLevelBase)'; } 
 }
final class ResourceTaggingDeleteTagsRequestZoneLevelCustomHostname extends ResourceTaggingDeleteTagsRequestZoneLevel {const ResourceTaggingDeleteTagsRequestZoneLevelCustomHostname(this.resourceTaggingDeleteTagsRequestZoneLevelBase);

factory ResourceTaggingDeleteTagsRequestZoneLevelCustomHostname.fromJson(Map<String, dynamic> json) { return ResourceTaggingDeleteTagsRequestZoneLevelCustomHostname(ResourceTaggingDeleteTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingDeleteTagsRequestZoneLevelBase resourceTaggingDeleteTagsRequestZoneLevelBase;

@override String get resourceType { return 'custom_hostname'; } 
@override Map<String, dynamic> toJson() { return {'resource_type': resourceType, ...resourceTaggingDeleteTagsRequestZoneLevelBase.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingDeleteTagsRequestZoneLevelCustomHostname && resourceTaggingDeleteTagsRequestZoneLevelBase == other.resourceTaggingDeleteTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingDeleteTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingDeleteTagsRequestZoneLevelCustomHostname(resourceTaggingDeleteTagsRequestZoneLevelBase: $resourceTaggingDeleteTagsRequestZoneLevelBase)'; } 
 }
final class ResourceTaggingDeleteTagsRequestZoneLevelDnsRecord extends ResourceTaggingDeleteTagsRequestZoneLevel {const ResourceTaggingDeleteTagsRequestZoneLevelDnsRecord(this.resourceTaggingDeleteTagsRequestZoneLevelBase);

factory ResourceTaggingDeleteTagsRequestZoneLevelDnsRecord.fromJson(Map<String, dynamic> json) { return ResourceTaggingDeleteTagsRequestZoneLevelDnsRecord(ResourceTaggingDeleteTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingDeleteTagsRequestZoneLevelBase resourceTaggingDeleteTagsRequestZoneLevelBase;

@override String get resourceType { return 'dns_record'; } 
@override Map<String, dynamic> toJson() { return {'resource_type': resourceType, ...resourceTaggingDeleteTagsRequestZoneLevelBase.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingDeleteTagsRequestZoneLevelDnsRecord && resourceTaggingDeleteTagsRequestZoneLevelBase == other.resourceTaggingDeleteTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingDeleteTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingDeleteTagsRequestZoneLevelDnsRecord(resourceTaggingDeleteTagsRequestZoneLevelBase: $resourceTaggingDeleteTagsRequestZoneLevelBase)'; } 
 }
final class ResourceTaggingDeleteTagsRequestZoneLevelManagedClientCertificate extends ResourceTaggingDeleteTagsRequestZoneLevel {const ResourceTaggingDeleteTagsRequestZoneLevelManagedClientCertificate(this.resourceTaggingDeleteTagsRequestZoneLevelBase);

factory ResourceTaggingDeleteTagsRequestZoneLevelManagedClientCertificate.fromJson(Map<String, dynamic> json) { return ResourceTaggingDeleteTagsRequestZoneLevelManagedClientCertificate(ResourceTaggingDeleteTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingDeleteTagsRequestZoneLevelBase resourceTaggingDeleteTagsRequestZoneLevelBase;

@override String get resourceType { return 'managed_client_certificate'; } 
@override Map<String, dynamic> toJson() { return {'resource_type': resourceType, ...resourceTaggingDeleteTagsRequestZoneLevelBase.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingDeleteTagsRequestZoneLevelManagedClientCertificate && resourceTaggingDeleteTagsRequestZoneLevelBase == other.resourceTaggingDeleteTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingDeleteTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingDeleteTagsRequestZoneLevelManagedClientCertificate(resourceTaggingDeleteTagsRequestZoneLevelBase: $resourceTaggingDeleteTagsRequestZoneLevelBase)'; } 
 }
final class ResourceTaggingDeleteTagsRequestZoneLevelZone extends ResourceTaggingDeleteTagsRequestZoneLevel {const ResourceTaggingDeleteTagsRequestZoneLevelZone(this.resourceTaggingDeleteTagsRequestZoneLevelBase);

factory ResourceTaggingDeleteTagsRequestZoneLevelZone.fromJson(Map<String, dynamic> json) { return ResourceTaggingDeleteTagsRequestZoneLevelZone(ResourceTaggingDeleteTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingDeleteTagsRequestZoneLevelBase resourceTaggingDeleteTagsRequestZoneLevelBase;

@override String get resourceType { return 'zone'; } 
@override Map<String, dynamic> toJson() { return {'resource_type': resourceType, ...resourceTaggingDeleteTagsRequestZoneLevelBase.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingDeleteTagsRequestZoneLevelZone && resourceTaggingDeleteTagsRequestZoneLevelBase == other.resourceTaggingDeleteTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingDeleteTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingDeleteTagsRequestZoneLevelZone(resourceTaggingDeleteTagsRequestZoneLevelBase: $resourceTaggingDeleteTagsRequestZoneLevelBase)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ResourceTaggingDeleteTagsRequestZoneLevel$Unknown extends ResourceTaggingDeleteTagsRequestZoneLevel {const ResourceTaggingDeleteTagsRequestZoneLevel$Unknown(this.json);

final Map<String, dynamic> json;

@override String get resourceType { return json['resource_type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingDeleteTagsRequestZoneLevel$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ResourceTaggingDeleteTagsRequestZoneLevel.unknown($json)'; } 
 }
