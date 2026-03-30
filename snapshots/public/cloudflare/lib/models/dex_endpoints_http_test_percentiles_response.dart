// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_http_details_percentiles_response.dart';final class DexEndpointsHttpTestPercentilesResponse {const DexEndpointsHttpTestPercentilesResponse({this.result});

factory DexEndpointsHttpTestPercentilesResponse.fromJson(Map<String, dynamic> json) { return DexEndpointsHttpTestPercentilesResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringHttpDetailsPercentilesResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringHttpDetailsPercentilesResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DexEndpointsHttpTestPercentilesResponse copyWith({DigitalExperienceMonitoringHttpDetailsPercentilesResponse Function()? result}) { return DexEndpointsHttpTestPercentilesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DexEndpointsHttpTestPercentilesResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DexEndpointsHttpTestPercentilesResponse(result: $result)'; } 
 }
