// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard {const PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard({this.commodityCode});

factory PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard(
  commodityCode: json['commodity_code'] as String?,
); }

final String? commodityCode;

Map<String, dynamic> toJson() { return {
  'commodity_code': ?commodityCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commodity_code'}.contains(key)); } 
PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard copyWith({String Function()? commodityCode}) { return PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard(
  commodityCode: commodityCode != null ? commodityCode() : this.commodityCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard &&
          commodityCode == other.commodityCode; } 
@override int get hashCode { return commodityCode.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCard(commodityCode: $commodityCode)'; } 
 }
