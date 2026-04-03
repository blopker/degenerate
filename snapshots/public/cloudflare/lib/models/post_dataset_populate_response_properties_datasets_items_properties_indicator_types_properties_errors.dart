// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_indicator_types_properties_errors_items.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrors {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrors({required this.items, required this.type, });

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrors.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrors(
  items: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrorsItems.fromJson(json['items'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrorsItems items;

final String type;

Map<String, dynamic> toJson() { return {
  'items': items.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items') &&
      json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrors copyWith({PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrorsItems? items, String? type, }) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrors(
  items: items ?? this.items,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrors &&
          items == other.items &&
          type == other.type; } 
@override int get hashCode { return Object.hash(items, type); } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypesPropertiesErrors(items: $items, type: $type)'; } 
 }
