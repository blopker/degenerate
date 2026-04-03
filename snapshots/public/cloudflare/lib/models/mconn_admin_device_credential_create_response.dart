// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_device_credential.dart';@immutable final class MconnAdminDeviceCredentialCreateResponse {const MconnAdminDeviceCredentialCreateResponse({this.result});

factory MconnAdminDeviceCredentialCreateResponse.fromJson(Map<String, dynamic> json) { return MconnAdminDeviceCredentialCreateResponse(
  result: json['result'] != null ? MconnAdminDeviceCredential.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminDeviceCredential? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminDeviceCredentialCreateResponse copyWith({MconnAdminDeviceCredential Function()? result}) { return MconnAdminDeviceCredentialCreateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminDeviceCredentialCreateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminDeviceCredentialCreateResponse(result: $result)'; } 
 }
