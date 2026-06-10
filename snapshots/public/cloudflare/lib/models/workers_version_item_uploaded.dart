// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_version_item_uploaded_metadata.dart';import 'workers_version_item_uploaded_resources.dart';@immutable final class WorkersVersionItemUploaded {const WorkersVersionItemUploaded({required this.resources, this.id, this.metadata, this.number, this.startupTimeMs, });

factory WorkersVersionItemUploaded.fromJson(Map<String, dynamic> json) { return WorkersVersionItemUploaded(
  id: json['id'] as String?,
  metadata: json['metadata'] != null ? WorkersVersionItemUploadedMetadata.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  number: json['number'] != null ? (json['number'] as num).toDouble() : null,
  resources: WorkersVersionItemUploadedResources.fromJson(json['resources'] as Map<String, dynamic>),
  startupTimeMs: json['startup_time_ms'] != null ? (json['startup_time_ms'] as num).toInt() : null,
); }

/// Unique identifier for the version.
final String? id;

final WorkersVersionItemUploadedMetadata? metadata;

/// Sequential version number.
final double? number;

final WorkersVersionItemUploadedResources resources;

/// Time in milliseconds spent on [Worker startup](https://developers.cloudflare.com/workers/platform/limits/#worker-startup-time).
final int? startupTimeMs;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'number': ?number,
  'resources': resources.toJson(),
  'startup_time_ms': ?startupTimeMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('resources'); } 
WorkersVersionItemUploaded copyWith({String Function()? id, WorkersVersionItemUploadedMetadata Function()? metadata, double Function()? number, WorkersVersionItemUploadedResources? resources, int Function()? startupTimeMs, }) { return WorkersVersionItemUploaded(
  id: id != null ? id() : this.id,
  metadata: metadata != null ? metadata() : this.metadata,
  number: number != null ? number() : this.number,
  resources: resources ?? this.resources,
  startupTimeMs: startupTimeMs != null ? startupTimeMs() : this.startupTimeMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemUploaded &&
          id == other.id &&
          metadata == other.metadata &&
          number == other.number &&
          resources == other.resources &&
          startupTimeMs == other.startupTimeMs; } 
@override int get hashCode { return Object.hash(id, metadata, number, resources, startupTimeMs); } 
@override String toString() { return 'WorkersVersionItemUploaded(id: $id, metadata: $metadata, number: $number, resources: $resources, startupTimeMs: $startupTimeMs)'; } 
 }
