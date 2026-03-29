// GENERATED CODE - DO NOT MODIFY BY HAND

final class AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCard {const AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCard({this.commodityCode});

factory AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCard(
  commodityCode: json['commodity_code'] as String?,
); }

final String? commodityCode;

Map<String, dynamic> toJson() { return {
  'commodity_code': ?commodityCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commodity_code'}.contains(key)); } 
AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCard copyWith({String Function()? commodityCode}) { return AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCard(
  commodityCode: commodityCode != null ? commodityCode() : this.commodityCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCard &&
          commodityCode == other.commodityCode; } 
@override int get hashCode { return commodityCode.hashCode; } 
@override String toString() { return 'AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCard(commodityCode: $commodityCode)'; } 
 }
