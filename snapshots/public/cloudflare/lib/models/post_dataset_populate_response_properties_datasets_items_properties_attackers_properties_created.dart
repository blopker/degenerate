// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesCreated {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesCreated({required this.type});

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesCreated.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesCreated(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesCreated copyWith({String? type}) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesCreated(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesCreated &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesAttackersPropertiesCreated(type: $type)'; } 
 }
