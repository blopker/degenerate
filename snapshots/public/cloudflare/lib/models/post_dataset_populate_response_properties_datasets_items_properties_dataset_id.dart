// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesDatasetId {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesDatasetId({required this.type});

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesDatasetId.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesDatasetId(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesDatasetId copyWith({String? type}) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesDatasetId(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesDatasetId &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesDatasetId(type: $type)'; } 
 }
