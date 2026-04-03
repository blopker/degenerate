// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_pages_checkout_session_total_details_resource_breakdown.dart';/// 
@immutable final class PaymentPagesCheckoutSessionTotalDetails {const PaymentPagesCheckoutSessionTotalDetails({required this.amountDiscount, required this.amountTax, this.amountShipping, this.breakdown, });

factory PaymentPagesCheckoutSessionTotalDetails.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionTotalDetails(
  amountDiscount: (json['amount_discount'] as num).toInt(),
  amountShipping: json['amount_shipping'] != null ? (json['amount_shipping'] as num).toInt() : null,
  amountTax: (json['amount_tax'] as num).toInt(),
  breakdown: json['breakdown'] != null ? PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown.fromJson(json['breakdown'] as Map<String, dynamic>) : null,
); }

/// This is the sum of all the discounts.
final int amountDiscount;

/// This is the sum of all the shipping amounts.
final int? amountShipping;

/// This is the sum of all the tax amounts.
final int amountTax;

final PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown? breakdown;

Map<String, dynamic> toJson() { return {
  'amount_discount': amountDiscount,
  'amount_shipping': ?amountShipping,
  'amount_tax': amountTax,
  if (breakdown != null) 'breakdown': breakdown?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_discount') && json['amount_discount'] is num &&
      json.containsKey('amount_tax') && json['amount_tax'] is num; } 
PaymentPagesCheckoutSessionTotalDetails copyWith({int? amountDiscount, int? Function()? amountShipping, int? amountTax, PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown Function()? breakdown, }) { return PaymentPagesCheckoutSessionTotalDetails(
  amountDiscount: amountDiscount ?? this.amountDiscount,
  amountShipping: amountShipping != null ? amountShipping() : this.amountShipping,
  amountTax: amountTax ?? this.amountTax,
  breakdown: breakdown != null ? breakdown() : this.breakdown,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionTotalDetails &&
          amountDiscount == other.amountDiscount &&
          amountShipping == other.amountShipping &&
          amountTax == other.amountTax &&
          breakdown == other.breakdown; } 
@override int get hashCode { return Object.hash(amountDiscount, amountShipping, amountTax, breakdown); } 
@override String toString() { return 'PaymentPagesCheckoutSessionTotalDetails(amountDiscount: $amountDiscount, amountShipping: $amountShipping, amountTax: $amountTax, breakdown: $breakdown)'; } 
 }
