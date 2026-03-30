// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_locations.dart';final class ZeroTrustGatewayComponentsSchemasResponseCollection {const ZeroTrustGatewayComponentsSchemasResponseCollection({this.result});

factory ZeroTrustGatewayComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayLocations.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ZeroTrustGatewayLocations>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayComponentsSchemasResponseCollection copyWith({List<ZeroTrustGatewayLocations> Function()? result}) { return ZeroTrustGatewayComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ZeroTrustGatewayComponentsSchemasResponseCollection(result: $result)'; } 
 }
