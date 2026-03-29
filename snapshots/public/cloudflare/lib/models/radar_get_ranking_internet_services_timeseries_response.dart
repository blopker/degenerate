// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_ranking_internet_services_timeseries_response_result.dart';final class RadarGetRankingInternetServicesTimeseriesResponse {const RadarGetRankingInternetServicesTimeseriesResponse({required this.result, required this.success, });

factory RadarGetRankingInternetServicesTimeseriesResponse.fromJson(Map<String, dynamic> json) { return RadarGetRankingInternetServicesTimeseriesResponse(
  result: RadarGetRankingInternetServicesTimeseriesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetRankingInternetServicesTimeseriesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetRankingInternetServicesTimeseriesResponse copyWith({RadarGetRankingInternetServicesTimeseriesResponseResult? result, bool? success, }) { return RadarGetRankingInternetServicesTimeseriesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRankingInternetServicesTimeseriesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetRankingInternetServicesTimeseriesResponse(result: $result, success: $success)'; } 
 }
