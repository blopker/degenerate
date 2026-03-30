// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_device.dart';final class MconnAdminDeviceListResponse {const MconnAdminDeviceListResponse({this.result});

factory MconnAdminDeviceListResponse.fromJson(Map<String, dynamic> json) { return MconnAdminDeviceListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => MconnAdminDevice.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MconnAdminDevice>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminDeviceListResponse copyWith({List<MconnAdminDevice> Function()? result}) { return MconnAdminDeviceListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminDeviceListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'MconnAdminDeviceListResponse(result: $result)'; } 
 }
