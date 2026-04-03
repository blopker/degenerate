// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_controller_device.dart';@immutable final class MconnControllerFetchDeviceResponse {const MconnControllerFetchDeviceResponse({this.result});

factory MconnControllerFetchDeviceResponse.fromJson(Map<String, dynamic> json) { return MconnControllerFetchDeviceResponse(
  result: json['result'] != null ? MconnControllerDevice.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnControllerDevice? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnControllerFetchDeviceResponse copyWith({MconnControllerDevice Function()? result}) { return MconnControllerFetchDeviceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerFetchDeviceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnControllerFetchDeviceResponse(result: $result)'; } 
 }
