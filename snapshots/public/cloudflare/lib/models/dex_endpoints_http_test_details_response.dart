// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_http_details_response.dart';final class DexEndpointsHttpTestDetailsResponse {const DexEndpointsHttpTestDetailsResponse({this.result});

factory DexEndpointsHttpTestDetailsResponse.fromJson(Map<String, dynamic> json) { return DexEndpointsHttpTestDetailsResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringHttpDetailsResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringHttpDetailsResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DexEndpointsHttpTestDetailsResponse copyWith({DigitalExperienceMonitoringHttpDetailsResponse Function()? result}) { return DexEndpointsHttpTestDetailsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DexEndpointsHttpTestDetailsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DexEndpointsHttpTestDetailsResponse(result: $result)'; } 
 }
