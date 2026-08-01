// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions {const PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions({this.commodityCode = const Omittable.absent()});

factory PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions(
  commodityCode: json.containsKey('commodity_code') ? Omittable(json['commodity_code'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> commodityCode;

Map<String, dynamic> toJson() { return {
  if (commodityCode.isPresent) 'commodity_code': commodityCode.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commodity_code'}.contains(key)); } 
PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions copyWith({Omittable<String?>? commodityCode}) { return PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions(
  commodityCode: commodityCode ?? this.commodityCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions &&
          commodityCode == other.commodityCode; } 
@override int get hashCode { return commodityCode.hashCode; } 
@override String toString() { return 'PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions(commodityCode: $commodityCode)'; } 
 }
