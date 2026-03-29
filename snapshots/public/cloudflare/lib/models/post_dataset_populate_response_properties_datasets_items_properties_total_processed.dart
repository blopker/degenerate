// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTotalProcessed {const PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTotalProcessed({required this.type});

factory PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTotalProcessed.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTotalProcessed(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTotalProcessed copyWith({String? type}) { return PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTotalProcessed(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTotalProcessed &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesDatasetsItemsPropertiesTotalProcessed(type: $type)'; } 
 }
