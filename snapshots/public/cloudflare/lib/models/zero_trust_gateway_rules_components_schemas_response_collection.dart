// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_rules.dart';@immutable final class ZeroTrustGatewayRulesComponentsSchemasResponseCollection {const ZeroTrustGatewayRulesComponentsSchemasResponseCollection({this.result});

factory ZeroTrustGatewayRulesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayRulesComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayRules.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ZeroTrustGatewayRules>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayRulesComponentsSchemasResponseCollection copyWith({List<ZeroTrustGatewayRules> Function()? result}) { return ZeroTrustGatewayRulesComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayRulesComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ZeroTrustGatewayRulesComponentsSchemasResponseCollection(result: $result)'; } 
 }
