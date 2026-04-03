// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_device.dart';@immutable final class MconnAdminDeviceFetchResponse {const MconnAdminDeviceFetchResponse({this.result});

factory MconnAdminDeviceFetchResponse.fromJson(Map<String, dynamic> json) { return MconnAdminDeviceFetchResponse(
  result: json['result'] != null ? MconnAdminDevice.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminDevice? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminDeviceFetchResponse copyWith({MconnAdminDevice Function()? result}) { return MconnAdminDeviceFetchResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminDeviceFetchResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminDeviceFetchResponse(result: $result)'; } 
 }
