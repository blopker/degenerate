// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_settings.dart';final class ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse {const ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse({this.result});

factory ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse(
  result: json['result'] != null ? ZeroTrustGatewaySettings.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewaySettings? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse copyWith({ZeroTrustGatewaySettings Function()? result}) { return ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse(result: $result)'; } 
 }
