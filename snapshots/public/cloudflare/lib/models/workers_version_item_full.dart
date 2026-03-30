// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_version_item_full_metadata.dart';import 'workers_version_item_full_resources.dart';final class WorkersVersionItemFull {const WorkersVersionItemFull({this.id, this.metadata, this.number, required this.resources, });

factory WorkersVersionItemFull.fromJson(Map<String, dynamic> json) { return WorkersVersionItemFull(
  id: json['id'] as String?,
  metadata: json['metadata'] != null ? WorkersVersionItemFullMetadata.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  number: json['number'] != null ? (json['number'] as num).toDouble() : null,
  resources: WorkersVersionItemFullResources.fromJson(json['resources'] as Map<String, dynamic>),
); }

/// Unique identifier for the version.
final String? id;

final WorkersVersionItemFullMetadata? metadata;

/// Sequential version number.
final double? number;

final WorkersVersionItemFullResources resources;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'number': ?number,
  'resources': resources.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('resources'); } 
WorkersVersionItemFull copyWith({String Function()? id, WorkersVersionItemFullMetadata Function()? metadata, double Function()? number, WorkersVersionItemFullResources? resources, }) { return WorkersVersionItemFull(
  id: id != null ? id() : this.id,
  metadata: metadata != null ? metadata() : this.metadata,
  number: number != null ? number() : this.number,
  resources: resources ?? this.resources,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemFull &&
          id == other.id &&
          metadata == other.metadata &&
          number == other.number &&
          resources == other.resources; } 
@override int get hashCode { return Object.hash(id, metadata, number, resources); } 
@override String toString() { return 'WorkersVersionItemFull(id: $id, metadata: $metadata, number: $number, resources: $resources)'; } 
 }
