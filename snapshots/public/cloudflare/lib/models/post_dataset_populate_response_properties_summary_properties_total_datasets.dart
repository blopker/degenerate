// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostDatasetPopulateResponsePropertiesSummaryPropertiesTotalDatasets {const PostDatasetPopulateResponsePropertiesSummaryPropertiesTotalDatasets({required this.type});

factory PostDatasetPopulateResponsePropertiesSummaryPropertiesTotalDatasets.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponsePropertiesSummaryPropertiesTotalDatasets(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PostDatasetPopulateResponsePropertiesSummaryPropertiesTotalDatasets copyWith({String? type}) { return PostDatasetPopulateResponsePropertiesSummaryPropertiesTotalDatasets(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponsePropertiesSummaryPropertiesTotalDatasets &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponsePropertiesSummaryPropertiesTotalDatasets(type: $type)'; } 
 }
