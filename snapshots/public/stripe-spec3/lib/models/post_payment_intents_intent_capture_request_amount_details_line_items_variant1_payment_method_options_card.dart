// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard {const PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard({this.commodityCode});

factory PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard(
  commodityCode: json['commodity_code'] as String?,
); }

final String? commodityCode;

Map<String, dynamic> toJson() { return {
  'commodity_code': ?commodityCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commodity_code'}.contains(key)); } 
PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard copyWith({String Function()? commodityCode}) { return PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard(
  commodityCode: commodityCode != null ? commodityCode() : this.commodityCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard &&
          commodityCode == other.commodityCode; } 
@override int get hashCode { return commodityCode.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard(commodityCode: $commodityCode)'; } 
 }
