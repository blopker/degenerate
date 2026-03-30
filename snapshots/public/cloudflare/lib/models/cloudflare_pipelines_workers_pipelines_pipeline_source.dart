// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudflare_pipelines_workers_pipelines_binding_source.dart';import 'cloudflare_pipelines_workers_pipelines_http_source.dart';sealed class CloudflarePipelinesWorkersPipelinesPipelineSource {const CloudflarePipelinesWorkersPipelinesPipelineSource();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CloudflarePipelinesWorkersPipelinesPipelineSource.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'binding' => CloudflarePipelinesWorkersPipelinesPipelineSourceBinding.fromJson(json),
  'http' => CloudflarePipelinesWorkersPipelinesPipelineSourceHttp.fromJson(json),
  _ => CloudflarePipelinesWorkersPipelinesPipelineSource$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CloudflarePipelinesWorkersPipelinesPipelineSource$Unknown; } 
 }
final class CloudflarePipelinesWorkersPipelinesPipelineSourceBinding extends CloudflarePipelinesWorkersPipelinesPipelineSource {const CloudflarePipelinesWorkersPipelinesPipelineSourceBinding(this.cloudflarePipelinesWorkersPipelinesBindingSource);

factory CloudflarePipelinesWorkersPipelinesPipelineSourceBinding.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesWorkersPipelinesPipelineSourceBinding(CloudflarePipelinesWorkersPipelinesBindingSource.fromJson(json)); }

final CloudflarePipelinesWorkersPipelinesBindingSource cloudflarePipelinesWorkersPipelinesBindingSource;

@override String get type { return 'binding'; } 
@override Map<String, dynamic> toJson() { return {...cloudflarePipelinesWorkersPipelinesBindingSource.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesWorkersPipelinesPipelineSourceBinding && cloudflarePipelinesWorkersPipelinesBindingSource == other.cloudflarePipelinesWorkersPipelinesBindingSource; } 
@override int get hashCode { return cloudflarePipelinesWorkersPipelinesBindingSource.hashCode; } 
@override String toString() { return 'CloudflarePipelinesWorkersPipelinesPipelineSourceBinding(cloudflarePipelinesWorkersPipelinesBindingSource: $cloudflarePipelinesWorkersPipelinesBindingSource)'; } 
 }
final class CloudflarePipelinesWorkersPipelinesPipelineSourceHttp extends CloudflarePipelinesWorkersPipelinesPipelineSource {const CloudflarePipelinesWorkersPipelinesPipelineSourceHttp(this.cloudflarePipelinesWorkersPipelinesHttpSource);

factory CloudflarePipelinesWorkersPipelinesPipelineSourceHttp.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesWorkersPipelinesPipelineSourceHttp(CloudflarePipelinesWorkersPipelinesHttpSource.fromJson(json)); }

final CloudflarePipelinesWorkersPipelinesHttpSource cloudflarePipelinesWorkersPipelinesHttpSource;

@override String get type { return 'http'; } 
@override Map<String, dynamic> toJson() { return {...cloudflarePipelinesWorkersPipelinesHttpSource.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesWorkersPipelinesPipelineSourceHttp && cloudflarePipelinesWorkersPipelinesHttpSource == other.cloudflarePipelinesWorkersPipelinesHttpSource; } 
@override int get hashCode { return cloudflarePipelinesWorkersPipelinesHttpSource.hashCode; } 
@override String toString() { return 'CloudflarePipelinesWorkersPipelinesPipelineSourceHttp(cloudflarePipelinesWorkersPipelinesHttpSource: $cloudflarePipelinesWorkersPipelinesHttpSource)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class CloudflarePipelinesWorkersPipelinesPipelineSource$Unknown extends CloudflarePipelinesWorkersPipelinesPipelineSource {const CloudflarePipelinesWorkersPipelinesPipelineSource$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesWorkersPipelinesPipelineSource$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CloudflarePipelinesWorkersPipelinesPipelineSource.unknown($json)'; } 
 }
