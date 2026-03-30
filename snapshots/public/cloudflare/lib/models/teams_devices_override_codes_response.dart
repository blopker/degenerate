// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_override_codes_response_result.dart';final class TeamsDevicesOverrideCodesResponse {const TeamsDevicesOverrideCodesResponse({this.result});

factory TeamsDevicesOverrideCodesResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesOverrideCodesResponse(
  result: json['result'] != null ? TeamsDevicesOverrideCodesResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesOverrideCodesResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesOverrideCodesResponse copyWith({TeamsDevicesOverrideCodesResponseResult Function()? result}) { return TeamsDevicesOverrideCodesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesOverrideCodesResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesOverrideCodesResponse(result: $result)'; } 
 }
