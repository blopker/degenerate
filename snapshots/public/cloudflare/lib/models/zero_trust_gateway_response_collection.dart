// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_certificates.dart';final class ZeroTrustGatewayResponseCollection {const ZeroTrustGatewayResponseCollection({this.result});

factory ZeroTrustGatewayResponseCollection.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayCertificates.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ZeroTrustGatewayCertificates>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayResponseCollection copyWith({List<ZeroTrustGatewayCertificates> Function()? result}) { return ZeroTrustGatewayResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ZeroTrustGatewayResponseCollection(result: $result)'; } 
 }
