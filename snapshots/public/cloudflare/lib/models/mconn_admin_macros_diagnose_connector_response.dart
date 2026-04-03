// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_macros_diagnose_connector_result.dart';@immutable final class MconnAdminMacrosDiagnoseConnectorResponse {const MconnAdminMacrosDiagnoseConnectorResponse({this.result});

factory MconnAdminMacrosDiagnoseConnectorResponse.fromJson(Map<String, dynamic> json) { return MconnAdminMacrosDiagnoseConnectorResponse(
  result: json['result'] != null ? MconnAdminMacrosDiagnoseConnectorResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminMacrosDiagnoseConnectorResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminMacrosDiagnoseConnectorResponse copyWith({MconnAdminMacrosDiagnoseConnectorResult Function()? result}) { return MconnAdminMacrosDiagnoseConnectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminMacrosDiagnoseConnectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminMacrosDiagnoseConnectorResponse(result: $result)'; } 
 }
