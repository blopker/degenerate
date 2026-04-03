// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_partner_device.dart';@immutable final class MconnPartnerDeviceRegisterResponse {const MconnPartnerDeviceRegisterResponse({this.result});

factory MconnPartnerDeviceRegisterResponse.fromJson(Map<String, dynamic> json) { return MconnPartnerDeviceRegisterResponse(
  result: json['result'] != null ? MconnPartnerDevice.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnPartnerDevice? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnPartnerDeviceRegisterResponse copyWith({MconnPartnerDevice Function()? result}) { return MconnPartnerDeviceRegisterResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnPartnerDeviceRegisterResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnPartnerDeviceRegisterResponse(result: $result)'; } 
 }
