// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_entities_locations_response_result.dart';@immutable final class RadarGetEntitiesLocationsResponse {const RadarGetEntitiesLocationsResponse({required this.result, required this.success, });

factory RadarGetEntitiesLocationsResponse.fromJson(Map<String, dynamic> json) { return RadarGetEntitiesLocationsResponse(
  result: RadarGetEntitiesLocationsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEntitiesLocationsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEntitiesLocationsResponse copyWith({RadarGetEntitiesLocationsResponseResult? result, bool? success, }) { return RadarGetEntitiesLocationsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEntitiesLocationsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEntitiesLocationsResponse(result: $result, success: $success)'; } 
 }
