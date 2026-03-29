// GENERATED CODE - DO NOT MODIFY BY HAND

final class AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCardPresent {const AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCardPresent({this.commodityCode});

factory AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCardPresent.fromJson(Map<String, dynamic> json) { return AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCardPresent(
  commodityCode: json['commodity_code'] as String?,
); }

final String? commodityCode;

Map<String, dynamic> toJson() { return {
  'commodity_code': ?commodityCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCardPresent copyWith({String Function()? commodityCode}) { return AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCardPresent(
  commodityCode: commodityCode != null ? commodityCode() : this.commodityCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCardPresent &&
          commodityCode == other.commodityCode; } 
@override int get hashCode { return commodityCode.hashCode; } 
@override String toString() { return 'AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCardPresent(commodityCode: $commodityCode)'; } 
 }
