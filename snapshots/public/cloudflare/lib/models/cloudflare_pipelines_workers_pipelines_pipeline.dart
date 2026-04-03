// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_workers_pipelines_pipeline_destination.dart';import 'cloudflare_pipelines_workers_pipelines_pipeline_source.dart';/// `[DEPRECATED]` Describes the configuration of a pipeline. Use the new streams/sinks/pipelines API instead.
@immutable final class CloudflarePipelinesWorkersPipelinesPipeline {const CloudflarePipelinesWorkersPipelinesPipeline({required this.destination, required this.endpoint, required this.id, required this.name, required this.source, required this.version, });

factory CloudflarePipelinesWorkersPipelinesPipeline.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesWorkersPipelinesPipeline(
  destination: CloudflarePipelinesWorkersPipelinesPipelineDestination.fromJson(json['destination'] as Map<String, dynamic>),
  endpoint: json['endpoint'] as String,
  id: json['id'] as String,
  name: json['name'] as String,
  source: (json['source'] as List<dynamic>).map((e) => CloudflarePipelinesWorkersPipelinesPipelineSource.fromJson(e as Map<String, dynamic>)).toList(),
  version: (json['version'] as num).toDouble(),
); }

final CloudflarePipelinesWorkersPipelinesPipelineDestination destination;

/// Indicates the endpoint URL to send traffic.
final String endpoint;

/// Specifies the pipeline identifier.
final String id;

/// Defines the name of the pipeline.
final String name;

final List<CloudflarePipelinesWorkersPipelinesPipelineSource> source;

/// Indicates the version number of last saved configuration.
final double version;

Map<String, dynamic> toJson() { return {
  'destination': destination.toJson(),
  'endpoint': endpoint,
  'id': id,
  'name': name,
  'source': source.map((e) => e.toJson()).toList(),
  'version': version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('destination') &&
      json.containsKey('endpoint') && json['endpoint'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('source') &&
      json.containsKey('version') && json['version'] is num; } 
CloudflarePipelinesWorkersPipelinesPipeline copyWith({CloudflarePipelinesWorkersPipelinesPipelineDestination? destination, String? endpoint, String? id, String? name, List<CloudflarePipelinesWorkersPipelinesPipelineSource>? source, double? version, }) { return CloudflarePipelinesWorkersPipelinesPipeline(
  destination: destination ?? this.destination,
  endpoint: endpoint ?? this.endpoint,
  id: id ?? this.id,
  name: name ?? this.name,
  source: source ?? this.source,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesWorkersPipelinesPipeline &&
          destination == other.destination &&
          endpoint == other.endpoint &&
          id == other.id &&
          name == other.name &&
          listEquals(source, other.source) &&
          version == other.version; } 
@override int get hashCode { return Object.hash(destination, endpoint, id, name, Object.hashAll(source), version); } 
@override String toString() { return 'CloudflarePipelinesWorkersPipelinesPipeline(destination: $destination, endpoint: $endpoint, id: $id, name: $name, source: $source, version: $version)'; } 
 }
