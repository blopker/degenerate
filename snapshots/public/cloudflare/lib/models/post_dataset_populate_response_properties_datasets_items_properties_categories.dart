// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_dataset_populate_response_properties_datasets_items_properties_categories_properties.dart';final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategories {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategories({required this.properties, required this.type, });

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategories.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategories(
  properties: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesProperties properties;

final String type;

Map<String, dynamic> toJson() { return {
  'properties': properties.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('properties') &&
      json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategories copyWith({PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesProperties? properties, String? type, }) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategories(
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategories &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(properties, type); } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategories(properties: $properties, type: $type)'; } 
 }
