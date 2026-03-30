// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent {const PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent({this.commodityCode});

factory PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent(
  commodityCode: json['commodity_code'] as String?,
); }

final String? commodityCode;

Map<String, dynamic> toJson() { return {
  'commodity_code': ?commodityCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commodity_code'}.contains(key)); } 
PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent copyWith({String Function()? commodityCode}) { return PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent(
  commodityCode: commodityCode != null ? commodityCode() : this.commodityCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent &&
          commodityCode == other.commodityCode; } 
@override int get hashCode { return commodityCode.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsCardPresent(commodityCode: $commodityCode)'; } 
 }
