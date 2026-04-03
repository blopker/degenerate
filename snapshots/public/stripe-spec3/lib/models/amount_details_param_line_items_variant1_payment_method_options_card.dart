// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCard {const AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCard({this.commodityCode});

factory AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCard(
  commodityCode: json['commodity_code'] as String?,
); }

final String? commodityCode;

Map<String, dynamic> toJson() { return {
  'commodity_code': ?commodityCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commodity_code'}.contains(key)); } 
AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCard copyWith({String Function()? commodityCode}) { return AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCard(
  commodityCode: commodityCode != null ? commodityCode() : this.commodityCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCard &&
          commodityCode == other.commodityCode; } 
@override int get hashCode { return commodityCode.hashCode; } 
@override String toString() { return 'AmountDetailsParamLineItemsVariant1PaymentMethodOptionsCard(commodityCode: $commodityCode)'; } 
 }
