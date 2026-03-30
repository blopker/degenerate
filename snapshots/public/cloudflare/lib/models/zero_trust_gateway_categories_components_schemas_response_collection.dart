// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_categories.dart';final class ZeroTrustGatewayCategoriesComponentsSchemasResponseCollection {const ZeroTrustGatewayCategoriesComponentsSchemasResponseCollection({this.result});

factory ZeroTrustGatewayCategoriesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayCategoriesComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayCategories.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ZeroTrustGatewayCategories>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayCategoriesComponentsSchemasResponseCollection copyWith({List<ZeroTrustGatewayCategories> Function()? result}) { return ZeroTrustGatewayCategoriesComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayCategoriesComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ZeroTrustGatewayCategoriesComponentsSchemasResponseCollection(result: $result)'; } 
 }
