// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_ranking_top_internet_services_response_result.dart';final class RadarGetRankingTopInternetServicesResponse {const RadarGetRankingTopInternetServicesResponse({required this.result, required this.success, });

factory RadarGetRankingTopInternetServicesResponse.fromJson(Map<String, dynamic> json) { return RadarGetRankingTopInternetServicesResponse(
  result: RadarGetRankingTopInternetServicesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetRankingTopInternetServicesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetRankingTopInternetServicesResponse copyWith({RadarGetRankingTopInternetServicesResponseResult? result, bool? success, }) { return RadarGetRankingTopInternetServicesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRankingTopInternetServicesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetRankingTopInternetServicesResponse(result: $result, success: $success)'; } 
 }
