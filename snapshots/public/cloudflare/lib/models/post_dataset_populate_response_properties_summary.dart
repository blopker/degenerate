// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_dataset_populate_response_properties_summary_properties.dart';final class PostDatasetPopulateResponsePropertiesSummary {const PostDatasetPopulateResponsePropertiesSummary({required this.properties, required this.type, });

factory PostDatasetPopulateResponsePropertiesSummary.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesSummary(
  properties: PostDatasetPopulateResponsePropertiesSummaryProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

final PostDatasetPopulateResponsePropertiesSummaryProperties properties;

final String type;

Map<String, dynamic> toJson() { return {
  'properties': properties.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('properties') &&
      json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesSummary copyWith({PostDatasetPopulateResponsePropertiesSummaryProperties? properties, String? type, }) { return PostDatasetPopulateResponsePropertiesSummary(
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesSummary &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(properties, type); } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesSummary(properties: $properties, type: $type)'; } 
 }
