// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_legacy_indicator_types_list_response_items.dart';final class GetLegacyIndicatorTypesListResponse {const GetLegacyIndicatorTypesListResponse({required this.items, required this.type, });

factory GetLegacyIndicatorTypesListResponse.fromJson(Map<String, dynamic> json) { return GetLegacyIndicatorTypesListResponse(
  items: GetLegacyIndicatorTypesListResponseItems.fromJson(json['items'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

final GetLegacyIndicatorTypesListResponseItems items;

final String type;

Map<String, dynamic> toJson() { return {
  'items': items.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items') &&
      json.containsKey('type') && json['type'] is String; } 
GetLegacyIndicatorTypesListResponse copyWith({GetLegacyIndicatorTypesListResponseItems? items, String? type, }) { return GetLegacyIndicatorTypesListResponse(
  items: items ?? this.items,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetLegacyIndicatorTypesListResponse &&
          items == other.items &&
          type == other.type; } 
@override int get hashCode { return Object.hash(items, type); } 
@override String toString() { return 'GetLegacyIndicatorTypesListResponse(items: $items, type: $type)'; } 
 }
