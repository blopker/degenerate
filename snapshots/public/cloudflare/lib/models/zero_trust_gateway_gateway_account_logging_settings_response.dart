// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_gateway_account_logging_settings.dart';final class ZeroTrustGatewayGatewayAccountLoggingSettingsResponse {const ZeroTrustGatewayGatewayAccountLoggingSettingsResponse({this.result});

factory ZeroTrustGatewayGatewayAccountLoggingSettingsResponse.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayGatewayAccountLoggingSettingsResponse(
  result: json['result'] != null ? ZeroTrustGatewayGatewayAccountLoggingSettings.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewayGatewayAccountLoggingSettings? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayGatewayAccountLoggingSettingsResponse copyWith({ZeroTrustGatewayGatewayAccountLoggingSettings Function()? result}) { return ZeroTrustGatewayGatewayAccountLoggingSettingsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayGatewayAccountLoggingSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayGatewayAccountLoggingSettingsResponse(result: $result)'; } 
 }
