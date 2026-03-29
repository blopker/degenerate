// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent {const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent({this.commodityCode});

factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent(
  commodityCode: json['commodity_code'] as String?,
); }

final String? commodityCode;

Map<String, dynamic> toJson() { return {
  'commodity_code': ?commodityCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commodity_code'}.contains(key)); } 
PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent copyWith({String Function()? commodityCode}) { return PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent(
  commodityCode: commodityCode != null ? commodityCode() : this.commodityCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent &&
          commodityCode == other.commodityCode; } 
@override int get hashCode { return commodityCode.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent(commodityCode: $commodityCode)'; } 
 }
