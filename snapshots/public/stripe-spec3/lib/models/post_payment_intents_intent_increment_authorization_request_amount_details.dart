// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param5.dart';import 'amount_details_tax_param5.dart';import 'post_payment_intents_intent_increment_authorization_request_amount_details_discount_amount.dart';import 'post_payment_intents_intent_increment_authorization_request_amount_details_line_items.dart';import 'post_payment_intents_intent_increment_authorization_request_amount_details_line_items_variant1.dart';import 'post_payment_intents_intent_increment_authorization_request_amount_details_shipping.dart';import 'post_payment_intents_intent_increment_authorization_request_amount_details_tax.dart';/// Provides industry-specific information about the amount.
final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails {const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails({this.discountAmount, this.enforceArithmeticValidation, this.lineItems, this.shipping, this.tax, });

factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails(
  discountAmount: json['discount_amount'] != null ? OneOf2.parse(json['discount_amount'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2.fromJson(v as String),) : null,
  enforceArithmeticValidation: json['enforce_arithmetic_validation'] as bool?,
  lineItems: json['line_items'] != null ? OneOf2.parse(json['line_items'], fromA: (v) => (v as List<dynamic>).map((e) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2.fromJson(v as String),) : null,
  shipping: json['shipping'] != null ? OneOf2.parse(json['shipping'], fromA: (v) => AmountDetailsShippingParam5.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2.fromJson(v as String),) : null,
  tax: json['tax'] != null ? OneOf2.parse(json['tax'], fromA: (v) => AmountDetailsTaxParam5.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2.fromJson(v as String),) : null,
); }

final PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount? discountAmount;

final bool? enforceArithmeticValidation;

final PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems? lineItems;

final PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping? shipping;

final PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax? tax;

Map<String, dynamic> toJson() { return {
  if (discountAmount != null) 'discount_amount': discountAmount?.toJson(),
  'enforce_arithmetic_validation': ?enforceArithmeticValidation,
  if (lineItems != null) 'line_items': lineItems?.toJson(),
  if (shipping != null) 'shipping': shipping?.toJson(),
  if (tax != null) 'tax': tax?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails copyWith({PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount Function()? discountAmount, bool Function()? enforceArithmeticValidation, PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems Function()? lineItems, PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping Function()? shipping, PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax Function()? tax, }) { return PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails(
  discountAmount: discountAmount != null ? discountAmount() : this.discountAmount,
  enforceArithmeticValidation: enforceArithmeticValidation != null ? enforceArithmeticValidation() : this.enforceArithmeticValidation,
  lineItems: lineItems != null ? lineItems() : this.lineItems,
  shipping: shipping != null ? shipping() : this.shipping,
  tax: tax != null ? tax() : this.tax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails &&
          discountAmount == other.discountAmount &&
          enforceArithmeticValidation == other.enforceArithmeticValidation &&
          lineItems == other.lineItems &&
          shipping == other.shipping &&
          tax == other.tax; } 
@override int get hashCode { return Object.hash(discountAmount, enforceArithmeticValidation, lineItems, shipping, tax); } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails(discountAmount: $discountAmount, enforceArithmeticValidation: $enforceArithmeticValidation, lineItems: $lineItems, shipping: $shipping, tax: $tax)'; } 
 }
