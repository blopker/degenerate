// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_entities_location_by_alpha2_response_result.dart';@immutable final class RadarGetEntitiesLocationByAlpha2Response {const RadarGetEntitiesLocationByAlpha2Response({required this.result, required this.success, });

factory RadarGetEntitiesLocationByAlpha2Response.fromJson(Map<String, dynamic> json) { return RadarGetEntitiesLocationByAlpha2Response(
  result: RadarGetEntitiesLocationByAlpha2ResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEntitiesLocationByAlpha2ResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEntitiesLocationByAlpha2Response copyWith({RadarGetEntitiesLocationByAlpha2ResponseResult? result, bool? success, }) { return RadarGetEntitiesLocationByAlpha2Response(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEntitiesLocationByAlpha2Response &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEntitiesLocationByAlpha2Response(result: $result, success: $success)'; } 
 }
