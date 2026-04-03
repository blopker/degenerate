// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_device.dart';@immutable final class MconnAdminDeviceCreateResponse {const MconnAdminDeviceCreateResponse({this.result});

factory MconnAdminDeviceCreateResponse.fromJson(Map<String, dynamic> json) { return MconnAdminDeviceCreateResponse(
  result: json['result'] != null ? MconnAdminDevice.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminDevice? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminDeviceCreateResponse copyWith({MconnAdminDevice Function()? result}) { return MconnAdminDeviceCreateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminDeviceCreateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminDeviceCreateResponse(result: $result)'; } 
 }
