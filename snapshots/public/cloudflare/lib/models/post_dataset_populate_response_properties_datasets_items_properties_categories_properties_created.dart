// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesCreated {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesCreated({required this.type});

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesCreated.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesCreated(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesCreated copyWith({String? type}) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesCreated(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesCreated &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategoriesPropertiesCreated(type: $type)'; } 
 }
