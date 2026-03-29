// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'line_items_tax_amount.dart';import 'payment_pages_checkout_session_shipping_cost_shipping_rate.dart';import 'shipping_rate.dart';/// 
final class PaymentPagesCheckoutSessionShippingCost {const PaymentPagesCheckoutSessionShippingCost({required this.amountSubtotal, required this.amountTax, required this.amountTotal, this.shippingRate, this.taxes, });

factory PaymentPagesCheckoutSessionShippingCost.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionShippingCost(
  amountSubtotal: (json['amount_subtotal'] as num).toInt(),
  amountTax: (json['amount_tax'] as num).toInt(),
  amountTotal: (json['amount_total'] as num).toInt(),
  shippingRate: json['shipping_rate'] != null ? OneOf2.parse(json['shipping_rate'], fromA: (v) => v as String, fromB: (v) => ShippingRate.fromJson(v as Map<String, dynamic>),) : null,
  taxes: (json['taxes'] as List<dynamic>?)?.map((e) => LineItemsTaxAmount.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Total shipping cost before any discounts or taxes are applied.
final int amountSubtotal;

/// Total tax amount applied due to shipping costs. If no tax was applied, defaults to 0.
final int amountTax;

/// Total shipping cost after discounts and taxes are applied.
final int amountTotal;

/// The ID of the ShippingRate for this order.
final PaymentPagesCheckoutSessionShippingCostShippingRate? shippingRate;

/// The taxes applied to the shipping rate.
final List<LineItemsTaxAmount>? taxes;

Map<String, dynamic> toJson() { return {
  'amount_subtotal': amountSubtotal,
  'amount_tax': amountTax,
  'amount_total': amountTotal,
  if (shippingRate != null) 'shipping_rate': shippingRate?.toJson(),
  if (taxes != null) 'taxes': taxes?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_subtotal') && json['amount_subtotal'] is num &&
      json.containsKey('amount_tax') && json['amount_tax'] is num &&
      json.containsKey('amount_total') && json['amount_total'] is num; } 
PaymentPagesCheckoutSessionShippingCost copyWith({int? amountSubtotal, int? amountTax, int? amountTotal, PaymentPagesCheckoutSessionShippingCostShippingRate? Function()? shippingRate, List<LineItemsTaxAmount> Function()? taxes, }) { return PaymentPagesCheckoutSessionShippingCost(
  amountSubtotal: amountSubtotal ?? this.amountSubtotal,
  amountTax: amountTax ?? this.amountTax,
  amountTotal: amountTotal ?? this.amountTotal,
  shippingRate: shippingRate != null ? shippingRate() : this.shippingRate,
  taxes: taxes != null ? taxes() : this.taxes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionShippingCost &&
          amountSubtotal == other.amountSubtotal &&
          amountTax == other.amountTax &&
          amountTotal == other.amountTotal &&
          shippingRate == other.shippingRate &&
          listEquals(taxes, other.taxes); } 
@override int get hashCode { return Object.hash(amountSubtotal, amountTax, amountTotal, shippingRate, Object.hashAll(taxes ?? const [])); } 
@override String toString() { return 'PaymentPagesCheckoutSessionShippingCost(amountSubtotal: $amountSubtotal, amountTax: $amountTax, amountTotal: $amountTotal, shippingRate: $shippingRate, taxes: $taxes)'; } 
 }
