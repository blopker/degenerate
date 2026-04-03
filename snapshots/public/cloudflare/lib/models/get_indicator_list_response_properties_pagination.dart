// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_indicator_list_response_properties_pagination_properties.dart';@immutable final class GetIndicatorListResponsePropertiesPagination {const GetIndicatorListResponsePropertiesPagination({required this.properties, required this.type, });

factory GetIndicatorListResponsePropertiesPagination.fromJson(Map<String, dynamic> json) { return GetIndicatorListResponsePropertiesPagination(
  properties: GetIndicatorListResponsePropertiesPaginationProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

final GetIndicatorListResponsePropertiesPaginationProperties properties;

final String type;

Map<String, dynamic> toJson() { return {
  'properties': properties.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('properties') &&
      json.containsKey('type') && json['type'] is String; } 
GetIndicatorListResponsePropertiesPagination copyWith({GetIndicatorListResponsePropertiesPaginationProperties? properties, String? type, }) { return GetIndicatorListResponsePropertiesPagination(
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetIndicatorListResponsePropertiesPagination &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(properties, type); } 
@override String toString() { return 'GetIndicatorListResponsePropertiesPagination(properties: $properties, type: $type)'; } 
 }
