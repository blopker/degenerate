// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vectorize_index_description.dart';import 'vectorize_index_dimension_configuration.dart';import 'vectorize_index_name.dart';final class VectorizeCreateIndexResponse {const VectorizeCreateIndexResponse({this.config, this.createdOn, this.description, this.modifiedOn, this.name, });

factory VectorizeCreateIndexResponse.fromJson(Map<String, dynamic> json) { return VectorizeCreateIndexResponse(
  config: json['config'] != null ? VectorizeIndexDimensionConfiguration.fromJson(json['config'] as Map<String, dynamic>) : null,
  createdOn: json['created_on'] != null ? DateTime.parse(json['created_on'] as String) : null,
  description: json['description'] != null ? VectorizeIndexDescription.fromJson(json['description'] as String) : null,
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  name: json['name'] != null ? VectorizeIndexName.fromJson(json['name'] as String) : null,
); }

final VectorizeIndexDimensionConfiguration? config;

/// Specifies the timestamp the resource was created as an ISO8601 string.
final DateTime? createdOn;

final VectorizeIndexDescription? description;

/// Specifies the timestamp the resource was modified as an ISO8601 string.
final DateTime? modifiedOn;

final VectorizeIndexName? name;

Map<String, dynamic> toJson() { return {
  if (config != null) 'config': config?.toJson(),
  if (createdOn != null) 'created_on': createdOn?.toIso8601String(),
  if (description != null) 'description': description?.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
VectorizeCreateIndexResponse copyWith({VectorizeIndexDimensionConfiguration Function()? config, DateTime Function()? createdOn, VectorizeIndexDescription Function()? description, DateTime Function()? modifiedOn, VectorizeIndexName Function()? name, }) { return VectorizeCreateIndexResponse(
  config: config != null ? config() : this.config,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  description: description != null ? description() : this.description,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeCreateIndexResponse &&
          config == other.config &&
          createdOn == other.createdOn &&
          description == other.description &&
          modifiedOn == other.modifiedOn &&
          name == other.name; } 
@override int get hashCode { return Object.hash(config, createdOn, description, modifiedOn, name); } 
@override String toString() { return 'VectorizeCreateIndexResponse(config: $config, createdOn: $createdOn, description: $description, modifiedOn: $modifiedOn, name: $name)'; } 
 }
