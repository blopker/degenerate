// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_app_types.dart';import 'zero_trust_gateway_application.dart';import 'zero_trust_gateway_application_type.dart';@immutable final class ZeroTrustGatewayAppTypesComponentsSchemasResponseCollection {const ZeroTrustGatewayAppTypesComponentsSchemasResponseCollection({this.result});

factory ZeroTrustGatewayAppTypesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayAppTypesComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => ZeroTrustGatewayApplication.fromJson(v as Map<String, dynamic>), fromB: (v) => ZeroTrustGatewayApplicationType.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<ZeroTrustGatewayAppTypes>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayAppTypesComponentsSchemasResponseCollection copyWith({List<ZeroTrustGatewayAppTypes> Function()? result}) { return ZeroTrustGatewayAppTypesComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayAppTypesComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ZeroTrustGatewayAppTypesComponentsSchemasResponseCollection(result: $result)'; } 
 }
