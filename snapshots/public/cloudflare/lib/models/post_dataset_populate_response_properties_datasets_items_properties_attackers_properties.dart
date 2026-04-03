// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_attackers_properties_created.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_attackers_properties_errors.dart';import 'post_dataset_populate_response_properties_datasets_items_properties_attackers_properties_found.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersProperties {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersProperties({required this.created, required this.errors, required this.found, });

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersProperties.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersProperties(
  created: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesCreated.fromJson(json['created'] as Map<String, dynamic>),
  errors: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesErrors.fromJson(json['errors'] as Map<String, dynamic>),
  found: PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFound.fromJson(json['found'] as Map<String, dynamic>),
); }

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesCreated created;

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesErrors errors;

final PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFound found;

Map<String, dynamic> toJson() { return {
  'created': created.toJson(),
  'errors': errors.toJson(),
  'found': found.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') &&
      json.containsKey('errors') &&
      json.containsKey('found'); } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersProperties copyWith({PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesCreated? created, PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesErrors? errors, PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFound? found, }) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersProperties(
  created: created ?? this.created,
  errors: errors ?? this.errors,
  found: found ?? this.found,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersProperties &&
          created == other.created &&
          errors == other.errors &&
          found == other.found; } 
@override int get hashCode { return Object.hash(created, errors, found); } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersProperties(created: $created, errors: $errors, found: $found)'; } 
 }
