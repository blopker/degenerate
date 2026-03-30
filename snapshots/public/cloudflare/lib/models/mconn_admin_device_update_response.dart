// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_admin_device.dart';final class MconnAdminDeviceUpdateResponse {const MconnAdminDeviceUpdateResponse({this.result});

factory MconnAdminDeviceUpdateResponse.fromJson(Map<String, dynamic> json) { return MconnAdminDeviceUpdateResponse(
  result: json['result'] != null ? MconnAdminDevice.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminDevice? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminDeviceUpdateResponse copyWith({MconnAdminDevice Function()? result}) { return MconnAdminDeviceUpdateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminDeviceUpdateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminDeviceUpdateResponse(result: $result)'; } 
 }
