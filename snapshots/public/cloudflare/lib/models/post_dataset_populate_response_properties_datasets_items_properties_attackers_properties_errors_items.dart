// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesErrorsItems {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesErrorsItems({required this.type});

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesErrorsItems.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesErrorsItems(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesErrorsItems copyWith({String? type}) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesErrorsItems(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesErrorsItems &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesErrorsItems(type: $type)'; } 
 }
