// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_macros_provision_physical_connector_result.dart';@immutable final class MconnAdminMacrosProvisionPhysicalConnectorResponse {const MconnAdminMacrosProvisionPhysicalConnectorResponse({this.result});

factory MconnAdminMacrosProvisionPhysicalConnectorResponse.fromJson(Map<String, dynamic> json) { return MconnAdminMacrosProvisionPhysicalConnectorResponse(
  result: json['result'] != null ? MconnAdminMacrosProvisionPhysicalConnectorResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminMacrosProvisionPhysicalConnectorResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminMacrosProvisionPhysicalConnectorResponse copyWith({MconnAdminMacrosProvisionPhysicalConnectorResult Function()? result}) { return MconnAdminMacrosProvisionPhysicalConnectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminMacrosProvisionPhysicalConnectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminMacrosProvisionPhysicalConnectorResponse(result: $result)'; } 
 }
