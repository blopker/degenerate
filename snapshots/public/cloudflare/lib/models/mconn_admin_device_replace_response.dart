// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_admin_device.dart';final class MconnAdminDeviceReplaceResponse {const MconnAdminDeviceReplaceResponse({this.result});

factory MconnAdminDeviceReplaceResponse.fromJson(Map<String, dynamic> json) { return MconnAdminDeviceReplaceResponse(
  result: json['result'] != null ? MconnAdminDevice.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminDevice? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminDeviceReplaceResponse copyWith({MconnAdminDevice Function()? result}) { return MconnAdminDeviceReplaceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminDeviceReplaceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminDeviceReplaceResponse(result: $result)'; } 
 }
