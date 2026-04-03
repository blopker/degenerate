// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_single_response_with_list_items_result.dart';@immutable final class ZeroTrustGatewaySingleResponseWithListItems {const ZeroTrustGatewaySingleResponseWithListItems({this.result});

factory ZeroTrustGatewaySingleResponseWithListItems.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewaySingleResponseWithListItems(
  result: json['result'] != null ? ZeroTrustGatewaySingleResponseWithListItemsResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewaySingleResponseWithListItemsResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewaySingleResponseWithListItems copyWith({ZeroTrustGatewaySingleResponseWithListItemsResult Function()? result}) { return ZeroTrustGatewaySingleResponseWithListItems(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewaySingleResponseWithListItems &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustGatewaySingleResponseWithListItems(result: $result)'; } 
 }
