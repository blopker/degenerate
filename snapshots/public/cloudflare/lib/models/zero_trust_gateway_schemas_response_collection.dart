// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_lists.dart';final class ZeroTrustGatewaySchemasResponseCollection {const ZeroTrustGatewaySchemasResponseCollection({this.result});

factory ZeroTrustGatewaySchemasResponseCollection.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewaySchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayLists.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ZeroTrustGatewayLists>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewaySchemasResponseCollection copyWith({List<ZeroTrustGatewayLists> Function()? result}) { return ZeroTrustGatewaySchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewaySchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ZeroTrustGatewaySchemasResponseCollection(result: $result)'; } 
 }
