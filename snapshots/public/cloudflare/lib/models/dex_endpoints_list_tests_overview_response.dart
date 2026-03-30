// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_tests_response.dart';final class DexEndpointsListTestsOverviewResponse {const DexEndpointsListTestsOverviewResponse({this.result});

factory DexEndpointsListTestsOverviewResponse.fromJson(Map<String, dynamic> json) { return DexEndpointsListTestsOverviewResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringTestsResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringTestsResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DexEndpointsListTestsOverviewResponse copyWith({DigitalExperienceMonitoringTestsResponse Function()? result}) { return DexEndpointsListTestsOverviewResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DexEndpointsListTestsOverviewResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DexEndpointsListTestsOverviewResponse(result: $result)'; } 
 }
