// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_entities_asn_by_id_response_result.dart';@immutable final class RadarGetEntitiesAsnByIdResponse {const RadarGetEntitiesAsnByIdResponse({required this.result, required this.success, });

factory RadarGetEntitiesAsnByIdResponse.fromJson(Map<String, dynamic> json) { return RadarGetEntitiesAsnByIdResponse(
  result: RadarGetEntitiesAsnByIdResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEntitiesAsnByIdResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEntitiesAsnByIdResponse copyWith({RadarGetEntitiesAsnByIdResponseResult? result, bool? success, }) { return RadarGetEntitiesAsnByIdResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEntitiesAsnByIdResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEntitiesAsnByIdResponse(result: $result, success: $success)'; } 
 }
