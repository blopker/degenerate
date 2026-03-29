// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_dataset_populate_response_properties_datasets_items.dart';final class PostDatasetPopulateResponsePropertiesDatasets {const PostDatasetPopulateResponsePropertiesDatasets({required this.items, required this.type, });

factory PostDatasetPopulateResponsePropertiesDatasets.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasets(
  items: PostDatasetPopulateResponsePropertiesDatasetsItems.fromJson(json['items'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

final PostDatasetPopulateResponsePropertiesDatasetsItems items;

final String type;

Map<String, dynamic> toJson() { return {
  'items': items.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items') &&
      json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasets copyWith({PostDatasetPopulateResponsePropertiesDatasetsItems? items, String? type, }) { return PostDatasetPopulateResponsePropertiesDatasets(
  items: items ?? this.items,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasets &&
          items == other.items &&
          type == other.type; } 
@override int get hashCode { return Object.hash(items, type); } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasets(items: $items, type: $type)'; } 
 }
