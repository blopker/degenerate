// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesErrorsItems {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesErrorsItems({required this.type});

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesErrorsItems.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesErrorsItems(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesErrorsItems copyWith({String? type}) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesErrorsItems(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesErrorsItems &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesErrorsItems(type: $type)'; } 
 }
