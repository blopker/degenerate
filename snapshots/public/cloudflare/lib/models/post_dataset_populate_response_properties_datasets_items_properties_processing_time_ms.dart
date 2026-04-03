// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesProcessingTimeMs {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesProcessingTimeMs({required this.type});

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesProcessingTimeMs.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesProcessingTimeMs(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesProcessingTimeMs copyWith({String? type}) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesProcessingTimeMs(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesProcessingTimeMs &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesProcessingTimeMs(type: $type)'; } 
 }
