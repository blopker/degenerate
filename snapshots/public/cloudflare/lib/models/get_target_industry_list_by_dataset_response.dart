// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_target_industry_list_by_dataset_response_items.dart';final class GetTargetIndustryListByDatasetResponse {const GetTargetIndustryListByDatasetResponse({required this.items, required this.type, });

factory GetTargetIndustryListByDatasetResponse.fromJson(Map<String, dynamic> json) { return GetTargetIndustryListByDatasetResponse(
  items: GetTargetIndustryListByDatasetResponseItems.fromJson(json['items'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

final GetTargetIndustryListByDatasetResponseItems items;

final String type;

Map<String, dynamic> toJson() { return {
  'items': items.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items') &&
      json.containsKey('type') && json['type'] is String; } 
GetTargetIndustryListByDatasetResponse copyWith({GetTargetIndustryListByDatasetResponseItems? items, String? type, }) { return GetTargetIndustryListByDatasetResponse(
  items: items ?? this.items,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetTargetIndustryListByDatasetResponse &&
          items == other.items &&
          type == other.type; } 
@override int get hashCode { return Object.hash(items, type); } 
@override String toString() { return 'GetTargetIndustryListByDatasetResponse(items: $items, type: $type)'; } 
 }
