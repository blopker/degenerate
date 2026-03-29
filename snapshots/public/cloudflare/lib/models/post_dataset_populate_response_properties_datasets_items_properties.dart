// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_dataset_populate_response_properties_datasets_items_properties_attackers.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_categories.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_dataset_id.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_indicator_types.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_processing_time_ms.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_target_industries.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_total_processed.dart';final class PostDatasetPopulateResponsePropertiesDatasetsItemsProperties {const PostDatasetPopulateResponsePropertiesDatasetsItemsProperties({required this.attackers, required this.categories, required this.datasetId, required this.indicatorTypes, required this.processingTimeMs, required this.targetIndustries, required this.totalProcessed, });

factory PostDatasetPopulateResponsePropertiesDatasetsItemsProperties.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsProperties(
  attackers: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackers.fromJson(json['attackers'] as Map<String, dynamic>),
  categories: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategories.fromJson(json['categories'] as Map<String, dynamic>),
  datasetId: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesDatasetId.fromJson(json['datasetId'] as Map<String, dynamic>),
  indicatorTypes: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypes.fromJson(json['indicatorTypes'] as Map<String, dynamic>),
  processingTimeMs: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesProcessingTimeMs.fromJson(json['processingTimeMs'] as Map<String, dynamic>),
  targetIndustries: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustries.fromJson(json['targetIndustries'] as Map<String, dynamic>),
  totalProcessed: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTotalProcessed.fromJson(json['totalProcessed'] as Map<String, dynamic>),
); }

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackers attackers;

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategories categories;

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesDatasetId datasetId;

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypes indicatorTypes;

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesProcessingTimeMs processingTimeMs;

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustries targetIndustries;

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTotalProcessed totalProcessed;

Map<String, dynamic> toJson() { return {
  'attackers': attackers.toJson(),
  'categories': categories.toJson(),
  'datasetId': datasetId.toJson(),
  'indicatorTypes': indicatorTypes.toJson(),
  'processingTimeMs': processingTimeMs.toJson(),
  'targetIndustries': targetIndustries.toJson(),
  'totalProcessed': totalProcessed.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('attackers') &&
      json.containsKey('categories') &&
      json.containsKey('datasetId') &&
      json.containsKey('indicatorTypes') &&
      json.containsKey('processingTimeMs') &&
      json.containsKey('targetIndustries') &&
      json.containsKey('totalProcessed'); } 
PostDatasetPopulateResponsePropertiesDatasetsItemsProperties copyWith({PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackers? attackers, PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesCategories? categories, PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesDatasetId? datasetId, PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesIndicatorTypes? indicatorTypes, PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesProcessingTimeMs? processingTimeMs, PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTargetIndustries? targetIndustries, PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTotalProcessed? totalProcessed, }) { return PostDatasetPopulateResponsePropertiesDatasetsItemsProperties(
  attackers: attackers ?? this.attackers,
  categories: categories ?? this.categories,
  datasetId: datasetId ?? this.datasetId,
  indicatorTypes: indicatorTypes ?? this.indicatorTypes,
  processingTimeMs: processingTimeMs ?? this.processingTimeMs,
  targetIndustries: targetIndustries ?? this.targetIndustries,
  totalProcessed: totalProcessed ?? this.totalProcessed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsProperties &&
          attackers == other.attackers &&
          categories == other.categories &&
          datasetId == other.datasetId &&
          indicatorTypes == other.indicatorTypes &&
          processingTimeMs == other.processingTimeMs &&
          targetIndustries == other.targetIndustries &&
          totalProcessed == other.totalProcessed; } 
@override int get hashCode { return Object.hash(attackers, categories, datasetId, indicatorTypes, processingTimeMs, targetIndustries, totalProcessed); } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsProperties(attackers: $attackers, categories: $categories, datasetId: $datasetId, indicatorTypes: $indicatorTypes, processingTimeMs: $processingTimeMs, targetIndustries: $targetIndustries, totalProcessed: $totalProcessed)'; } 
 }
