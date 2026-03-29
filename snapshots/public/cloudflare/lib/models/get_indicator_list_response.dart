// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_indicator_list_response_properties.dart';final class GetIndicatorListResponse {const GetIndicatorListResponse({required this.properties, required this.type, });

factory GetIndicatorListResponse.fromJson(Map<String, dynamic> json) { return GetIndicatorListResponse(
  properties: GetIndicatorListResponseProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

final GetIndicatorListResponseProperties properties;

final String type;

Map<String, dynamic> toJson() { return {
  'properties': properties.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('properties') &&
      json.containsKey('type') && json['type'] is String; } 
GetIndicatorListResponse copyWith({GetIndicatorListResponseProperties? properties, String? type, }) { return GetIndicatorListResponse(
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetIndicatorListResponse &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(properties, type); } 
@override String toString() { return 'GetIndicatorListResponse(properties: $properties, type: $type)'; } 
 }
