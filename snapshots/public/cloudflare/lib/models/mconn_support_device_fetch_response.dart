// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_support_device.dart';final class MconnSupportDeviceFetchResponse {const MconnSupportDeviceFetchResponse({this.result});

factory MconnSupportDeviceFetchResponse.fromJson(Map<String, dynamic> json) { return MconnSupportDeviceFetchResponse(
  result: json['result'] != null ? MconnSupportDevice.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnSupportDevice? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnSupportDeviceFetchResponse copyWith({MconnSupportDevice Function()? result}) { return MconnSupportDeviceFetchResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnSupportDeviceFetchResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnSupportDeviceFetchResponse(result: $result)'; } 
 }
