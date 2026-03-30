// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_gateway_account_result.dart';final class ZeroTrustGatewayGatewayAccount {const ZeroTrustGatewayGatewayAccount({this.result});

factory ZeroTrustGatewayGatewayAccount.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayGatewayAccount(
  result: json['result'] != null ? ZeroTrustGatewayGatewayAccountResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewayGatewayAccountResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayGatewayAccount copyWith({ZeroTrustGatewayGatewayAccountResult Function()? result}) { return ZeroTrustGatewayGatewayAccount(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayGatewayAccount &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayGatewayAccount(result: $result)'; } 
 }
