// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'line_items_discount_amount.dart';import 'line_items_tax_amount.dart';/// 
final class PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown {const PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown({required this.discounts, required this.taxes, });

factory PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown(
  discounts: (json['discounts'] as List<dynamic>).map((e) => LineItemsDiscountAmount.fromJson(e as Map<String, dynamic>)).toList(),
  taxes: (json['taxes'] as List<dynamic>).map((e) => LineItemsTaxAmount.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The aggregated discounts.
final List<LineItemsDiscountAmount> discounts;

/// The aggregated tax amounts by rate.
final List<LineItemsTaxAmount> taxes;

Map<String, dynamic> toJson() { return {
  'discounts': discounts.map((e) => e.toJson()).toList(),
  'taxes': taxes.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('discounts') &&
      json.containsKey('taxes'); } 
PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown copyWith({List<LineItemsDiscountAmount>? discounts, List<LineItemsTaxAmount>? taxes, }) { return PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown(
  discounts: discounts ?? this.discounts,
  taxes: taxes ?? this.taxes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown &&
          listEquals(discounts, other.discounts) &&
          listEquals(taxes, other.taxes); } 
@override int get hashCode { return Object.hash(Object.hashAll(discounts), Object.hashAll(taxes)); } 
@override String toString() { return 'PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown(discounts: $discounts, taxes: $taxes)'; } 
 }
