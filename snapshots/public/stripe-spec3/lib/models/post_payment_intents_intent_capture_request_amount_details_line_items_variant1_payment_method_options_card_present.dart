// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent {const PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent({this.commodityCode});

factory PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent(
  commodityCode: json['commodity_code'] as String?,
); }

final String? commodityCode;

Map<String, dynamic> toJson() { return {
  'commodity_code': ?commodityCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commodity_code'}.contains(key)); } 
PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent copyWith({String Function()? commodityCode}) { return PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent(
  commodityCode: commodityCode != null ? commodityCode() : this.commodityCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent &&
          commodityCode == other.commodityCode; } 
@override int get hashCode { return commodityCode.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent(commodityCode: $commodityCode)'; } 
 }
