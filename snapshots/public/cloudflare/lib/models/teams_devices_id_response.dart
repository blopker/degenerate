// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_id_response_result.dart';final class TeamsDevicesIdResponse {const TeamsDevicesIdResponse({this.result});

factory TeamsDevicesIdResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesIdResponse(
  result: json['result'] != null ? TeamsDevicesIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesIdResponse copyWith({TeamsDevicesIdResponseResult Function()? result}) { return TeamsDevicesIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesIdResponse(result: $result)'; } 
 }
