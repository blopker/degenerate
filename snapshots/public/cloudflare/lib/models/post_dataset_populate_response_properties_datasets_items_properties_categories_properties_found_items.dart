// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesFoundItems {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesFoundItems({required this.type});

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesFoundItems.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesFoundItems(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesFoundItems copyWith({String? type}) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesFoundItems(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesFoundItems &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesFoundItems(type: $type)'; } 
 }
