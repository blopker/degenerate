// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard {const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard({this.commodityCode});

factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard(
  commodityCode: json['commodity_code'] as String?,
); }

final String? commodityCode;

Map<String, dynamic> toJson() { return {
  'commodity_code': ?commodityCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commodity_code'}.contains(key)); } 
PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard copyWith({String Function()? commodityCode}) { return PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard(
  commodityCode: commodityCode != null ? commodityCode() : this.commodityCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard &&
          commodityCode == other.commodityCode; } 
@override int get hashCode { return commodityCode.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard(commodityCode: $commodityCode)'; } 
 }
