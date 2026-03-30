// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_support_macros_diagnose_connector_result.dart';final class MconnSupportMacrosDiagnoseConnectorResponse {const MconnSupportMacrosDiagnoseConnectorResponse({this.result});

factory MconnSupportMacrosDiagnoseConnectorResponse.fromJson(Map<String, dynamic> json) { return MconnSupportMacrosDiagnoseConnectorResponse(
  result: json['result'] != null ? MconnSupportMacrosDiagnoseConnectorResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnSupportMacrosDiagnoseConnectorResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnSupportMacrosDiagnoseConnectorResponse copyWith({MconnSupportMacrosDiagnoseConnectorResult Function()? result}) { return MconnSupportMacrosDiagnoseConnectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnSupportMacrosDiagnoseConnectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnSupportMacrosDiagnoseConnectorResponse(result: $result)'; } 
 }
