// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_search_global_response_result.dart';@immutable final class RadarGetSearchGlobalResponse {const RadarGetSearchGlobalResponse({required this.result, required this.success, });

factory RadarGetSearchGlobalResponse.fromJson(Map<String, dynamic> json) { return RadarGetSearchGlobalResponse(
  result: RadarGetSearchGlobalResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetSearchGlobalResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetSearchGlobalResponse copyWith({RadarGetSearchGlobalResponseResult? result, bool? success, }) { return RadarGetSearchGlobalResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetSearchGlobalResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetSearchGlobalResponse(result: $result, success: $success)'; } 
 }
