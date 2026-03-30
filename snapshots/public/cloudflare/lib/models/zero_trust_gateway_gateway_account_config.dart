// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_gateway_account_config_result.dart';final class ZeroTrustGatewayGatewayAccountConfig {const ZeroTrustGatewayGatewayAccountConfig({this.result});

factory ZeroTrustGatewayGatewayAccountConfig.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayGatewayAccountConfig(
  result: json['result'] != null ? ZeroTrustGatewayGatewayAccountConfigResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewayGatewayAccountConfigResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayGatewayAccountConfig copyWith({ZeroTrustGatewayGatewayAccountConfigResult Function()? result}) { return ZeroTrustGatewayGatewayAccountConfig(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayGatewayAccountConfig &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayGatewayAccountConfig(result: $result)'; } 
 }
