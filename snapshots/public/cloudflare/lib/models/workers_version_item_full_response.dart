// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_version_item_full_response_metadata.dart';import 'workers_version_item_full_response_resources.dart';@immutable final class WorkersVersionItemFullResponse {const WorkersVersionItemFullResponse({required this.resources, this.id, this.metadata, this.number, });

factory WorkersVersionItemFullResponse.fromJson(Map<String, dynamic> json) {return WorkersVersionItemFullResponse(
  id: json['id'] as String?,
  metadata: json['metadata'] != null ? WorkersVersionItemFullResponseMetadata.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  number: json['number'] != null ? (json['number'] as num).toDouble() : null,
  resources: WorkersVersionItemFullResponseResources.fromJson(json['resources'] as Map<String, dynamic>),
);}

/// Unique identifier for the version.
final String? id;

final WorkersVersionItemFullResponseMetadata? metadata;

/// Sequential version number.
final double? number;

final WorkersVersionItemFullResponseResources resources;

Map<String, dynamic> toJson() {return {
  'id': ?id,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'number': ?number,
  'resources': resources.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('resources');}
WorkersVersionItemFullResponse copyWith({String? Function()? id, WorkersVersionItemFullResponseMetadata? Function()? metadata, double? Function()? number, WorkersVersionItemFullResponseResources? resources, }) {return WorkersVersionItemFullResponse(
  id: id != null ? id() : this.id,
  metadata: metadata != null ? metadata() : this.metadata,
  number: number != null ? number() : this.number,
  resources: resources ?? this.resources,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersVersionItemFullResponse &&
          id == other.id &&
          metadata == other.metadata &&
          number == other.number &&
          resources == other.resources;}
@override int get hashCode {return Object.hash(id, metadata, number, resources);}
@override String toString() {return 'WorkersVersionItemFullResponse(id: $id, metadata: $metadata, number: $number, resources: $resources)';}
}
