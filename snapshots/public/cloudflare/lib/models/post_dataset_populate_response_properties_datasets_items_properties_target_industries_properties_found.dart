// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_dataset_populate_response_properties_datasets_items_properties_target_industries_properties_found_items.dart';final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustriesPropertiesFound {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustriesPropertiesFound({required this.items, required this.type, });

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustriesPropertiesFound.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustriesPropertiesFound(
  items: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustriesPropertiesFoundItems.fromJson(json['items'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustriesPropertiesFoundItems items;

final String type;

Map<String, dynamic> toJson() { return {
  'items': items.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items') &&
      json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustriesPropertiesFound copyWith({PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustriesPropertiesFoundItems? items, String? type, }) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustriesPropertiesFound(
  items: items ?? this.items,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustriesPropertiesFound &&
          items == other.items &&
          type == other.type; } 
@override int get hashCode { return Object.hash(items, type); } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustriesPropertiesFound(items: $items, type: $type)'; } 
 }
