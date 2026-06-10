// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_tagging_set_tags_request_zone_level_access_application_policy.dart';import 'resource_tagging_set_tags_request_zone_level_base.dart';/// Request body schema for setting tags on zone-level resources.
sealed class ResourceTaggingSetTagsRequestZoneLevel {const ResourceTaggingSetTagsRequestZoneLevel();

/// Deserialize from JSON, dispatching on the `resource_type` discriminator.
factory ResourceTaggingSetTagsRequestZoneLevel.fromJson(Map<String, dynamic> json) { return switch (json['resource_type']) {
  'access_application_policy' => ResourceTaggingSetTagsRequestZoneLevel$AccessApplicationPolicy.fromJson(json),
  'api_gateway_operation' => ResourceTaggingSetTagsRequestZoneLevelGatewayOperation.fromJson(json),
  'custom_certificate' => ResourceTaggingSetTagsRequestZoneLevelCustomCertificate.fromJson(json),
  'custom_hostname' => ResourceTaggingSetTagsRequestZoneLevelCustomHostname.fromJson(json),
  'dns_record' => ResourceTaggingSetTagsRequestZoneLevelDnsRecord.fromJson(json),
  'managed_client_certificate' => ResourceTaggingSetTagsRequestZoneLevelManagedClientCertificate.fromJson(json),
  'zone' => ResourceTaggingSetTagsRequestZoneLevelZone.fromJson(json),
  _ => ResourceTaggingSetTagsRequestZoneLevel$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get resourceType;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ResourceTaggingSetTagsRequestZoneLevel$Unknown; } 
 }
@immutable final class ResourceTaggingSetTagsRequestZoneLevel$AccessApplicationPolicy extends ResourceTaggingSetTagsRequestZoneLevel {const ResourceTaggingSetTagsRequestZoneLevel$AccessApplicationPolicy(this.resourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy);

factory ResourceTaggingSetTagsRequestZoneLevel$AccessApplicationPolicy.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestZoneLevel$AccessApplicationPolicy(ResourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy.fromJson(json)); }

final ResourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy resourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy;

@override String get resourceType { return 'access_application_policy'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestZoneLevel$AccessApplicationPolicy && resourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy == other.resourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy; } 
@override int get hashCode { return resourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestZoneLevel\$AccessApplicationPolicy(resourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy: $resourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestZoneLevelGatewayOperation extends ResourceTaggingSetTagsRequestZoneLevel {const ResourceTaggingSetTagsRequestZoneLevelGatewayOperation(this.resourceTaggingSetTagsRequestZoneLevelBase);

factory ResourceTaggingSetTagsRequestZoneLevelGatewayOperation.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestZoneLevelGatewayOperation(ResourceTaggingSetTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestZoneLevelBase resourceTaggingSetTagsRequestZoneLevelBase;

@override String get resourceType { return 'api_gateway_operation'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestZoneLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestZoneLevelGatewayOperation && resourceTaggingSetTagsRequestZoneLevelBase == other.resourceTaggingSetTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestZoneLevelGatewayOperation(resourceTaggingSetTagsRequestZoneLevelBase: $resourceTaggingSetTagsRequestZoneLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestZoneLevelCustomCertificate extends ResourceTaggingSetTagsRequestZoneLevel {const ResourceTaggingSetTagsRequestZoneLevelCustomCertificate(this.resourceTaggingSetTagsRequestZoneLevelBase);

factory ResourceTaggingSetTagsRequestZoneLevelCustomCertificate.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestZoneLevelCustomCertificate(ResourceTaggingSetTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestZoneLevelBase resourceTaggingSetTagsRequestZoneLevelBase;

@override String get resourceType { return 'custom_certificate'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestZoneLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestZoneLevelCustomCertificate && resourceTaggingSetTagsRequestZoneLevelBase == other.resourceTaggingSetTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestZoneLevelCustomCertificate(resourceTaggingSetTagsRequestZoneLevelBase: $resourceTaggingSetTagsRequestZoneLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestZoneLevelCustomHostname extends ResourceTaggingSetTagsRequestZoneLevel {const ResourceTaggingSetTagsRequestZoneLevelCustomHostname(this.resourceTaggingSetTagsRequestZoneLevelBase);

factory ResourceTaggingSetTagsRequestZoneLevelCustomHostname.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestZoneLevelCustomHostname(ResourceTaggingSetTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestZoneLevelBase resourceTaggingSetTagsRequestZoneLevelBase;

@override String get resourceType { return 'custom_hostname'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestZoneLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestZoneLevelCustomHostname && resourceTaggingSetTagsRequestZoneLevelBase == other.resourceTaggingSetTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestZoneLevelCustomHostname(resourceTaggingSetTagsRequestZoneLevelBase: $resourceTaggingSetTagsRequestZoneLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestZoneLevelDnsRecord extends ResourceTaggingSetTagsRequestZoneLevel {const ResourceTaggingSetTagsRequestZoneLevelDnsRecord(this.resourceTaggingSetTagsRequestZoneLevelBase);

factory ResourceTaggingSetTagsRequestZoneLevelDnsRecord.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestZoneLevelDnsRecord(ResourceTaggingSetTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestZoneLevelBase resourceTaggingSetTagsRequestZoneLevelBase;

@override String get resourceType { return 'dns_record'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestZoneLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestZoneLevelDnsRecord && resourceTaggingSetTagsRequestZoneLevelBase == other.resourceTaggingSetTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestZoneLevelDnsRecord(resourceTaggingSetTagsRequestZoneLevelBase: $resourceTaggingSetTagsRequestZoneLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestZoneLevelManagedClientCertificate extends ResourceTaggingSetTagsRequestZoneLevel {const ResourceTaggingSetTagsRequestZoneLevelManagedClientCertificate(this.resourceTaggingSetTagsRequestZoneLevelBase);

factory ResourceTaggingSetTagsRequestZoneLevelManagedClientCertificate.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestZoneLevelManagedClientCertificate(ResourceTaggingSetTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestZoneLevelBase resourceTaggingSetTagsRequestZoneLevelBase;

@override String get resourceType { return 'managed_client_certificate'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestZoneLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestZoneLevelManagedClientCertificate && resourceTaggingSetTagsRequestZoneLevelBase == other.resourceTaggingSetTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestZoneLevelManagedClientCertificate(resourceTaggingSetTagsRequestZoneLevelBase: $resourceTaggingSetTagsRequestZoneLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestZoneLevelZone extends ResourceTaggingSetTagsRequestZoneLevel {const ResourceTaggingSetTagsRequestZoneLevelZone(this.resourceTaggingSetTagsRequestZoneLevelBase);

factory ResourceTaggingSetTagsRequestZoneLevelZone.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestZoneLevelZone(ResourceTaggingSetTagsRequestZoneLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestZoneLevelBase resourceTaggingSetTagsRequestZoneLevelBase;

@override String get resourceType { return 'zone'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestZoneLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestZoneLevelZone && resourceTaggingSetTagsRequestZoneLevelBase == other.resourceTaggingSetTagsRequestZoneLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestZoneLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestZoneLevelZone(resourceTaggingSetTagsRequestZoneLevelBase: $resourceTaggingSetTagsRequestZoneLevelBase)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ResourceTaggingSetTagsRequestZoneLevel$Unknown extends ResourceTaggingSetTagsRequestZoneLevel {const ResourceTaggingSetTagsRequestZoneLevel$Unknown(this.json);

final Map<String, dynamic> json;

@override String get resourceType { return json['resource_type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestZoneLevel$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestZoneLevel.unknown($json)'; } 
 }
