// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_flows_amount_details_client_resource_tip.dart';import 'payment_flows_amount_details_line_items.dart';import 'payment_flows_amount_details_resource_error.dart';import 'payment_flows_amount_details_resource_shipping.dart';import 'payment_flows_amount_details_resource_tax.dart';/// 
final class PaymentFlowsAmountDetails {const PaymentFlowsAmountDetails({this.discountAmount, this.error, this.lineItems, this.shipping, this.tax, this.tip, });

factory PaymentFlowsAmountDetails.fromJson(Map<String, dynamic> json) { return PaymentFlowsAmountDetails(
  discountAmount: json['discount_amount'] != null ? (json['discount_amount'] as num).toInt() : null,
  error: json['error'] != null ? PaymentFlowsAmountDetailsResourceError.fromJson(json['error'] as Map<String, dynamic>) : null,
  lineItems: json['line_items'] != null ? PaymentFlowsAmountDetailsLineItems.fromJson(json['line_items'] as Map<String, dynamic>) : null,
  shipping: json['shipping'] != null ? PaymentFlowsAmountDetailsResourceShipping.fromJson(json['shipping'] as Map<String, dynamic>) : null,
  tax: json['tax'] != null ? PaymentFlowsAmountDetailsResourceTax.fromJson(json['tax'] as Map<String, dynamic>) : null,
  tip: json['tip'] != null ? PaymentFlowsAmountDetailsClientResourceTip.fromJson(json['tip'] as Map<String, dynamic>) : null,
); }

/// The total discount applied on the transaction represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). An integer greater than 0.
/// 
/// This field is mutually exclusive with the `amount_details[line_items][#][discount_amount]` field.
final int? discountAmount;

final PaymentFlowsAmountDetailsResourceError? error;

/// A list of line items, each containing information about a product in the PaymentIntent. There is a maximum of 200 line items.
final PaymentFlowsAmountDetailsLineItems? lineItems;

final PaymentFlowsAmountDetailsResourceShipping? shipping;

final PaymentFlowsAmountDetailsResourceTax? tax;

final PaymentFlowsAmountDetailsClientResourceTip? tip;

Map<String, dynamic> toJson() { return {
  'discount_amount': ?discountAmount,
  if (error != null) 'error': error?.toJson(),
  if (lineItems != null) 'line_items': lineItems?.toJson(),
  if (shipping != null) 'shipping': shipping?.toJson(),
  if (tax != null) 'tax': tax?.toJson(),
  if (tip != null) 'tip': tip?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentFlowsAmountDetails copyWith({int Function()? discountAmount, PaymentFlowsAmountDetailsResourceError Function()? error, PaymentFlowsAmountDetailsLineItems Function()? lineItems, PaymentFlowsAmountDetailsResourceShipping Function()? shipping, PaymentFlowsAmountDetailsResourceTax Function()? tax, PaymentFlowsAmountDetailsClientResourceTip Function()? tip, }) { return PaymentFlowsAmountDetails(
  discountAmount: discountAmount != null ? discountAmount() : this.discountAmount,
  error: error != null ? error() : this.error,
  lineItems: lineItems != null ? lineItems() : this.lineItems,
  shipping: shipping != null ? shipping() : this.shipping,
  tax: tax != null ? tax() : this.tax,
  tip: tip != null ? tip() : this.tip,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsAmountDetails &&
          discountAmount == other.discountAmount &&
          error == other.error &&
          lineItems == other.lineItems &&
          shipping == other.shipping &&
          tax == other.tax &&
          tip == other.tip; } 
@override int get hashCode { return Object.hash(discountAmount, error, lineItems, shipping, tax, tip); } 
@override String toString() { return 'PaymentFlowsAmountDetails(discountAmount: $discountAmount, error: $error, lineItems: $lineItems, shipping: $shipping, tax: $tax, tip: $tip)'; } 
 }
