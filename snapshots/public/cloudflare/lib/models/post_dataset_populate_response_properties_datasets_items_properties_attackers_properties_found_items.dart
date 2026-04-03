// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFoundItems {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFoundItems({required this.type});

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFoundItems.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFoundItems(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFoundItems copyWith({String? type}) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFoundItems(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFoundItems &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesFoundItems(type: $type)'; } 
 }
