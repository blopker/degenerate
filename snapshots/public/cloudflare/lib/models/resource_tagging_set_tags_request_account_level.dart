// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_tagging_set_tags_request_account_level_base.dart';import 'resource_tagging_set_tags_request_account_level_worker_version.dart';/// Request body schema for setting tags on account-level resources.
sealed class ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevel();

/// Deserialize from JSON, dispatching on the `resource_type` discriminator.
factory ResourceTaggingSetTagsRequestAccountLevel.fromJson(Map<String, dynamic> json) { return switch (json['resource_type']) {
  'access_application' => ResourceTaggingSetTagsRequestAccountLevelAccessApplication.fromJson(json),
  'access_group' => ResourceTaggingSetTagsRequestAccountLevelAccessGroup.fromJson(json),
  'account' => ResourceTaggingSetTagsRequestAccountLevelAccount.fromJson(json),
  'ai_gateway' => ResourceTaggingSetTagsRequestAccountLevelAiGateway.fromJson(json),
  'alerting_policy' => ResourceTaggingSetTagsRequestAccountLevelAlertingPolicy.fromJson(json),
  'alerting_webhook' => ResourceTaggingSetTagsRequestAccountLevelAlertingWebhook.fromJson(json),
  'cloudflared_tunnel' => ResourceTaggingSetTagsRequestAccountLevelCloudflaredTunnel.fromJson(json),
  'd1_database' => ResourceTaggingSetTagsRequestAccountLevelD1Database.fromJson(json),
  'durable_object_namespace' => ResourceTaggingSetTagsRequestAccountLevelDurableObjectNamespace.fromJson(json),
  'gateway_list' => ResourceTaggingSetTagsRequestAccountLevelGatewayList.fromJson(json),
  'gateway_rule' => ResourceTaggingSetTagsRequestAccountLevelGatewayRule.fromJson(json),
  'image' => ResourceTaggingSetTagsRequestAccountLevelImage.fromJson(json),
  'kv_namespace' => ResourceTaggingSetTagsRequestAccountLevelKvNamespace.fromJson(json),
  'queue' => ResourceTaggingSetTagsRequestAccountLevelQueue.fromJson(json),
  'r2_bucket' => ResourceTaggingSetTagsRequestAccountLevelR2Bucket.fromJson(json),
  'resource_share' => ResourceTaggingSetTagsRequestAccountLevelResourceShare.fromJson(json),
  'stream_live_input' => ResourceTaggingSetTagsRequestAccountLevelStreamLiveInput.fromJson(json),
  'stream_video' => ResourceTaggingSetTagsRequestAccountLevelStreamVideo.fromJson(json),
  'worker' => ResourceTaggingSetTagsRequestAccountLevelWorker.fromJson(json),
  'worker_version' => ResourceTaggingSetTagsRequestAccountLevel$WorkerVersion.fromJson(json),
  _ => ResourceTaggingSetTagsRequestAccountLevel$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get resourceType;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ResourceTaggingSetTagsRequestAccountLevel$Unknown; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelAccessApplication extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelAccessApplication(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelAccessApplication.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelAccessApplication(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'access_application'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelAccessApplication && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelAccessApplication(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelAccessGroup extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelAccessGroup(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelAccessGroup.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelAccessGroup(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'access_group'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelAccessGroup && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelAccessGroup(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelAccount extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelAccount(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelAccount.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelAccount(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'account'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelAccount && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelAccount(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelAiGateway extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelAiGateway(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelAiGateway.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelAiGateway(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'ai_gateway'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelAiGateway && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelAiGateway(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelAlertingPolicy extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelAlertingPolicy(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelAlertingPolicy.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelAlertingPolicy(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'alerting_policy'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelAlertingPolicy && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelAlertingPolicy(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelAlertingWebhook extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelAlertingWebhook(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelAlertingWebhook.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelAlertingWebhook(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'alerting_webhook'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelAlertingWebhook && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelAlertingWebhook(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelCloudflaredTunnel extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelCloudflaredTunnel(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelCloudflaredTunnel.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelCloudflaredTunnel(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'cloudflared_tunnel'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelCloudflaredTunnel && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelCloudflaredTunnel(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelD1Database extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelD1Database(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelD1Database.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelD1Database(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'd1_database'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelD1Database && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelD1Database(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelDurableObjectNamespace extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelDurableObjectNamespace(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelDurableObjectNamespace.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelDurableObjectNamespace(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'durable_object_namespace'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelDurableObjectNamespace && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelDurableObjectNamespace(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelGatewayList extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelGatewayList(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelGatewayList.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelGatewayList(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'gateway_list'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelGatewayList && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelGatewayList(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelGatewayRule extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelGatewayRule(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelGatewayRule.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelGatewayRule(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'gateway_rule'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelGatewayRule && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelGatewayRule(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelImage extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelImage(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelImage.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelImage(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'image'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelImage && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelImage(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelKvNamespace extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelKvNamespace(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelKvNamespace.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelKvNamespace(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'kv_namespace'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelKvNamespace && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelKvNamespace(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelQueue extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelQueue(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelQueue.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelQueue(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'queue'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelQueue && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelQueue(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelR2Bucket extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelR2Bucket(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelR2Bucket.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelR2Bucket(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'r2_bucket'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelR2Bucket && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelR2Bucket(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelResourceShare extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelResourceShare(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelResourceShare.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelResourceShare(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'resource_share'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelResourceShare && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelResourceShare(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelStreamLiveInput extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelStreamLiveInput(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelStreamLiveInput.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelStreamLiveInput(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'stream_live_input'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelStreamLiveInput && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelStreamLiveInput(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelStreamVideo extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelStreamVideo(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelStreamVideo.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelStreamVideo(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'stream_video'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelStreamVideo && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelStreamVideo(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevelWorker extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevelWorker(this.resourceTaggingSetTagsRequestAccountLevelBase);

factory ResourceTaggingSetTagsRequestAccountLevelWorker.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevelWorker(ResourceTaggingSetTagsRequestAccountLevelBase.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelBase resourceTaggingSetTagsRequestAccountLevelBase;

@override String get resourceType { return 'worker'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelBase.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevelWorker && resourceTaggingSetTagsRequestAccountLevelBase == other.resourceTaggingSetTagsRequestAccountLevelBase; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelBase.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevelWorker(resourceTaggingSetTagsRequestAccountLevelBase: $resourceTaggingSetTagsRequestAccountLevelBase)'; } 
 }
@immutable final class ResourceTaggingSetTagsRequestAccountLevel$WorkerVersion extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevel$WorkerVersion(this.resourceTaggingSetTagsRequestAccountLevelWorkerVersion);

factory ResourceTaggingSetTagsRequestAccountLevel$WorkerVersion.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestAccountLevel$WorkerVersion(ResourceTaggingSetTagsRequestAccountLevelWorkerVersion.fromJson(json)); }

final ResourceTaggingSetTagsRequestAccountLevelWorkerVersion resourceTaggingSetTagsRequestAccountLevelWorkerVersion;

@override String get resourceType { return 'worker_version'; } 
@override Map<String, dynamic> toJson() { return {...resourceTaggingSetTagsRequestAccountLevelWorkerVersion.toJson(), 'resource_type': resourceType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevel$WorkerVersion && resourceTaggingSetTagsRequestAccountLevelWorkerVersion == other.resourceTaggingSetTagsRequestAccountLevelWorkerVersion; } 
@override int get hashCode { return resourceTaggingSetTagsRequestAccountLevelWorkerVersion.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevel\$WorkerVersion(resourceTaggingSetTagsRequestAccountLevelWorkerVersion: $resourceTaggingSetTagsRequestAccountLevelWorkerVersion)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ResourceTaggingSetTagsRequestAccountLevel$Unknown extends ResourceTaggingSetTagsRequestAccountLevel {const ResourceTaggingSetTagsRequestAccountLevel$Unknown(this.json);

final Map<String, dynamic> json;

@override String get resourceType { return json['resource_type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingSetTagsRequestAccountLevel$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestAccountLevel.unknown($json)'; } 
 }
