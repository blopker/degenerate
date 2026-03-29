// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostDatasetPopulateResponsePropertiesErrorsItems {const PostDatasetPopulateResponsePropertiesErrorsItems({required this.type});

factory PostDatasetPopulateResponsePropertiesErrorsItems.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesErrorsItems(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesErrorsItems copyWith({String? type}) { return PostDatasetPopulateResponsePropertiesErrorsItems(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesErrorsItems &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesErrorsItems(type: $type)'; } 
 }
