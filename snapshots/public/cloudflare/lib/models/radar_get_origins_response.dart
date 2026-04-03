// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_origins_response_result.dart';@immutable final class RadarGetOriginsResponse {const RadarGetOriginsResponse({required this.result, required this.success, });

factory RadarGetOriginsResponse.fromJson(Map<String, dynamic> json) { return RadarGetOriginsResponse(
  result: RadarGetOriginsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetOriginsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetOriginsResponse copyWith({RadarGetOriginsResponseResult? result, bool? success, }) { return RadarGetOriginsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetOriginsResponse(result: $result, success: $success)'; } 
 }
