// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_indicator_types_properties_created.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_indicator_types_properties_errors.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_indicator_types_properties_found.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesProperties {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesProperties({required this.created, required this.errors, required this.found, });

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesProperties.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesProperties(
  created: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesCreated.fromJson(json['created'] as Map<String, dynamic>),
  errors: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrors.fromJson(json['errors'] as Map<String, dynamic>),
  found: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesFound.fromJson(json['found'] as Map<String, dynamic>),
); }

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesCreated created;

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrors errors;

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesFound found;

Map<String, dynamic> toJson() { return {
  'created': created.toJson(),
  'errors': errors.toJson(),
  'found': found.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') &&
      json.containsKey('errors') &&
      json.containsKey('found'); } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesProperties copyWith({PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesCreated? created, PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrors? errors, PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesFound? found, }) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesProperties(
  created: created ?? this.created,
  errors: errors ?? this.errors,
  found: found ?? this.found,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesProperties &&
          created == other.created &&
          errors == other.errors &&
          found == other.found; } 
@override int get hashCode { return Object.hash(created, errors, found); } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesProperties(created: $created, errors: $errors, found: $found)'; } 
 }
