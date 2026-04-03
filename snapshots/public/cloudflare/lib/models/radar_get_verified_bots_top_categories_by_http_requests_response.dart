// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_verified_bots_top_categories_by_http_requests_response_result.dart';@immutable final class RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponse {const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponse({required this.result, required this.success, });

factory RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponse.fromJson(Map<String, dynamic> json) { return RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponse(
  result: RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponse copyWith({RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResult? result, bool? success, }) { return RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponse(result: $result, success: $success)'; } 
 }
