// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_param_discount_amount.dart';import 'amount_details_param_line_items.dart';import 'amount_details_param_line_items_variant1.dart';import 'amount_details_param_shipping.dart';import 'amount_details_param_tax.dart';import 'amount_details_shipping_param2.dart';import 'amount_details_tax_param2.dart';final class AmountDetailsParam {const AmountDetailsParam({this.discountAmount, this.enforceArithmeticValidation, this.lineItems, this.shipping, this.tax, });

factory AmountDetailsParam.fromJson(Map<String, dynamic> json) { return AmountDetailsParam(
  discountAmount: json['discount_amount'] != null ? OneOf2.parse(json['discount_amount'], fromA: (v) => (v as num).toInt(), fromB: (v) => AmountDetailsParamDiscountAmountVariant2.fromJson(v as String),) : null,
  enforceArithmeticValidation: json['enforce_arithmetic_validation'] as bool?,
  lineItems: json['line_items'] != null ? OneOf2.parse(json['line_items'], fromA: (v) => (v as List<dynamic>).map((e) => AmountDetailsParamLineItemsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => AmountDetailsParamLineItemsVariant2.fromJson(v as String),) : null,
  shipping: json['shipping'] != null ? OneOf2.parse(json['shipping'], fromA: (v) => AmountDetailsShippingParam2.fromJson(v as Map<String, dynamic>), fromB: (v) => AmountDetailsParamShippingVariant2.fromJson(v as String),) : null,
  tax: json['tax'] != null ? OneOf2.parse(json['tax'], fromA: (v) => AmountDetailsTaxParam2.fromJson(v as Map<String, dynamic>), fromB: (v) => AmountDetailsParamTaxVariant2.fromJson(v as String),) : null,
); }

final AmountDetailsParamDiscountAmount? discountAmount;

final bool? enforceArithmeticValidation;

final AmountDetailsParamLineItems? lineItems;

final AmountDetailsParamShipping? shipping;

final AmountDetailsParamTax? tax;

Map<String, dynamic> toJson() { return {
  if (discountAmount != null) 'discount_amount': discountAmount?.toJson(),
  'enforce_arithmetic_validation': ?enforceArithmeticValidation,
  if (lineItems != null) 'line_items': lineItems?.toJson(),
  if (shipping != null) 'shipping': shipping?.toJson(),
  if (tax != null) 'tax': tax?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AmountDetailsParam copyWith({AmountDetailsParamDiscountAmount Function()? discountAmount, bool Function()? enforceArithmeticValidation, AmountDetailsParamLineItems Function()? lineItems, AmountDetailsParamShipping Function()? shipping, AmountDetailsParamTax Function()? tax, }) { return AmountDetailsParam(
  discountAmount: discountAmount != null ? discountAmount() : this.discountAmount,
  enforceArithmeticValidation: enforceArithmeticValidation != null ? enforceArithmeticValidation() : this.enforceArithmeticValidation,
  lineItems: lineItems != null ? lineItems() : this.lineItems,
  shipping: shipping != null ? shipping() : this.shipping,
  tax: tax != null ? tax() : this.tax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsParam &&
          discountAmount == other.discountAmount &&
          enforceArithmeticValidation == other.enforceArithmeticValidation &&
          lineItems == other.lineItems &&
          shipping == other.shipping &&
          tax == other.tax; } 
@override int get hashCode { return Object.hash(discountAmount, enforceArithmeticValidation, lineItems, shipping, tax); } 
@override String toString() { return 'AmountDetailsParam(discountAmount: $discountAmount, enforceArithmeticValidation: $enforceArithmeticValidation, lineItems: $lineItems, shipping: $shipping, tax: $tax)'; } 
 }
