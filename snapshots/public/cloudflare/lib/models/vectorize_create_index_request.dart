// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_index_configuration.dart';import 'vectorize_index_description.dart';import 'vectorize_index_dimension_configuration.dart';import 'vectorize_index_name.dart';import 'vectorize_index_preset_configuration.dart';@immutable final class VectorizeCreateIndexRequest {const VectorizeCreateIndexRequest({required this.config, required this.name, this.description, });

factory VectorizeCreateIndexRequest.fromJson(Map<String, dynamic> json) { return VectorizeCreateIndexRequest(
  config: OneOf2.parse(json['config'], fromA: (v) => VectorizeIndexDimensionConfiguration.fromJson(v as Map<String, dynamic>), fromB: (v) => VectorizeIndexPresetConfiguration.fromJson(v as Map<String, dynamic>),),
  description: json['description'] != null ? VectorizeIndexDescription.fromJson(json['description'] as String) : null,
  name: VectorizeIndexName.fromJson(json['name'] as String),
); }

final VectorizeIndexConfiguration config;

final VectorizeIndexDescription? description;

final VectorizeIndexName name;

Map<String, dynamic> toJson() { return {
  'config': config.toJson(),
  if (description != null) 'description': description?.toJson(),
  'name': name.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('config') &&
      json.containsKey('name'); } 
VectorizeCreateIndexRequest copyWith({VectorizeIndexConfiguration? config, VectorizeIndexDescription Function()? description, VectorizeIndexName? name, }) { return VectorizeCreateIndexRequest(
  config: config ?? this.config,
  description: description != null ? description() : this.description,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeCreateIndexRequest &&
          config == other.config &&
          description == other.description &&
          name == other.name; } 
@override int get hashCode { return Object.hash(config, description, name); } 
@override String toString() { return 'VectorizeCreateIndexRequest(config: $config, description: $description, name: $name)'; } 
 }
