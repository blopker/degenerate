// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_certificates.dart';final class ZeroTrustGatewaySingleResponse {const ZeroTrustGatewaySingleResponse({this.result});

factory ZeroTrustGatewaySingleResponse.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewaySingleResponse(
  result: json['result'] != null ? ZeroTrustGatewayCertificates.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewayCertificates? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewaySingleResponse copyWith({ZeroTrustGatewayCertificates Function()? result}) { return ZeroTrustGatewaySingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewaySingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustGatewaySingleResponse(result: $result)'; } 
 }
