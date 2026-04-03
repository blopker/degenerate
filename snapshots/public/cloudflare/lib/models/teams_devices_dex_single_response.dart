// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device_dex_test_schemas_http.dart';@immutable final class TeamsDevicesDexSingleResponse {const TeamsDevicesDexSingleResponse({this.result});

factory TeamsDevicesDexSingleResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesDexSingleResponse(
  result: json['result'] != null ? TeamsDevicesDeviceDexTestSchemasHttp.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesDeviceDexTestSchemasHttp? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesDexSingleResponse copyWith({TeamsDevicesDeviceDexTestSchemasHttp Function()? result}) { return TeamsDevicesDexSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDexSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesDexSingleResponse(result: $result)'; } 
 }
