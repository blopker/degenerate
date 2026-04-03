// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_lists.dart';@immutable final class ZeroTrustGatewayListSingleResponse {const ZeroTrustGatewayListSingleResponse({this.result});

factory ZeroTrustGatewayListSingleResponse.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayListSingleResponse(
  result: json['result'] != null ? ZeroTrustGatewayLists.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewayLists? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayListSingleResponse copyWith({ZeroTrustGatewayLists Function()? result}) { return ZeroTrustGatewayListSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayListSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayListSingleResponse(result: $result)'; } 
 }
