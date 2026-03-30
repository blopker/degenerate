// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_devices_policy_certificates.dart';final class TeamsDevicesDevicesPolicyCertificatesSingle {const TeamsDevicesDevicesPolicyCertificatesSingle({this.result});

factory TeamsDevicesDevicesPolicyCertificatesSingle.fromJson(Map<String, dynamic> json) { return TeamsDevicesDevicesPolicyCertificatesSingle(
  result: json['result'] != null ? TeamsDevicesDevicesPolicyCertificates.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesDevicesPolicyCertificates? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesDevicesPolicyCertificatesSingle copyWith({TeamsDevicesDevicesPolicyCertificates Function()? result}) { return TeamsDevicesDevicesPolicyCertificatesSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDevicesPolicyCertificatesSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesDevicesPolicyCertificatesSingle(result: $result)'; } 
 }
