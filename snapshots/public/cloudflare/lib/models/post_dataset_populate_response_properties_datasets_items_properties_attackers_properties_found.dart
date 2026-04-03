// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_attackers_properties_found_items.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFound {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFound({required this.items, required this.type, });

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFound.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFound(
  items: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFoundItems.fromJson(json['items'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFoundItems items;

final String type;

Map<String, dynamic> toJson() { return {
  'items': items.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items') &&
      json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFound copyWith({PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFoundItems? items, String? type, }) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFound(
  items: items ?? this.items,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFound &&
          items == other.items &&
          type == other.type; } 
@override int get hashCode { return Object.hash(items, type); } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFound(items: $items, type: $type)'; } 
 }
