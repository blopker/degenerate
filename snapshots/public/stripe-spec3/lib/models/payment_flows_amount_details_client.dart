// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_flows_amount_details_client_resource_tip.dart';/// 
final class PaymentFlowsAmountDetailsClient {const PaymentFlowsAmountDetailsClient({this.tip});

factory PaymentFlowsAmountDetailsClient.fromJson(Map<String, dynamic> json) { return PaymentFlowsAmountDetailsClient(
  tip: json['tip'] != null ? PaymentFlowsAmountDetailsClientResourceTip.fromJson(json['tip'] as Map<String, dynamic>) : null,
); }

final PaymentFlowsAmountDetailsClientResourceTip? tip;

Map<String, dynamic> toJson() { return {
  if (tip != null) 'tip': tip?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tip'}.contains(key)); } 
PaymentFlowsAmountDetailsClient copyWith({PaymentFlowsAmountDetailsClientResourceTip Function()? tip}) { return PaymentFlowsAmountDetailsClient(
  tip: tip != null ? tip() : this.tip,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsAmountDetailsClient &&
          tip == other.tip; } 
@override int get hashCode { return tip.hashCode; } 
@override String toString() { return 'PaymentFlowsAmountDetailsClient(tip: $tip)'; } 
 }
