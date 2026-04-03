// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_support_macros_provision_physical_connector_result.dart';@immutable final class MconnSupportMacrosProvisionPhysicalConnectorResponse {const MconnSupportMacrosProvisionPhysicalConnectorResponse({this.result});

factory MconnSupportMacrosProvisionPhysicalConnectorResponse.fromJson(Map<String, dynamic> json) { return MconnSupportMacrosProvisionPhysicalConnectorResponse(
  result: json['result'] != null ? MconnSupportMacrosProvisionPhysicalConnectorResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnSupportMacrosProvisionPhysicalConnectorResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnSupportMacrosProvisionPhysicalConnectorResponse copyWith({MconnSupportMacrosProvisionPhysicalConnectorResult Function()? result}) { return MconnSupportMacrosProvisionPhysicalConnectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnSupportMacrosProvisionPhysicalConnectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnSupportMacrosProvisionPhysicalConnectorResponse(result: $result)'; } 
 }
