// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_pacfile.dart';@immutable final class ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse {const ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse({this.result});

factory ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse(
  result: json['result'] != null ? ZeroTrustGatewayPacfile.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewayPacfile? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse copyWith({ZeroTrustGatewayPacfile Function()? result}) { return ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse(result: $result)'; } 
 }
