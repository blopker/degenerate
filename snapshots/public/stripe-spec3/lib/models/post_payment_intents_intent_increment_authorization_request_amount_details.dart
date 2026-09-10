// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_intent_increment_authorization_request_amount_details_discount_amount.dart';import 'post_payment_intents_intent_increment_authorization_request_amount_details_line_items.dart';import 'post_payment_intents_intent_increment_authorization_request_amount_details_shipping.dart';import 'post_payment_intents_intent_increment_authorization_request_amount_details_tax.dart';/// Provides industry-specific information about the amount.
@immutable final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails {const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails({this.discountAmount, this.enforceArithmeticValidation, this.lineItems, this.shipping, this.tax, });

factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails.fromJson(Map<String, dynamic> json) {return PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails(
  discountAmount: json['discount_amount'] != null ? PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount.fromJson(json['discount_amount']) : null,
  enforceArithmeticValidation: json['enforce_arithmetic_validation'] as bool?,
  lineItems: json['line_items'] != null ? PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems.fromJson(json['line_items']) : null,
  shipping: json['shipping'] != null ? PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping.fromJson(json['shipping']) : null,
  tax: json['tax'] != null ? PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax.fromJson(json['tax']) : null,
);}

final PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount? discountAmount;

final bool? enforceArithmeticValidation;

final PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems? lineItems;

final PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping? shipping;

final PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax? tax;

Map<String, dynamic> toJson() {return {
  if (discountAmount != null) 'discount_amount': discountAmount?.toJson(),
  'enforce_arithmetic_validation': ?enforceArithmeticValidation,
  if (lineItems != null) 'line_items': lineItems?.toJson(),
  if (shipping != null) 'shipping': shipping?.toJson(),
  if (tax != null) 'tax': tax?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'discount_amount', 'enforce_arithmetic_validation', 'line_items', 'shipping', 'tax'}.contains(key));}
PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails copyWith({PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount? Function()? discountAmount, bool? Function()? enforceArithmeticValidation, PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems? Function()? lineItems, PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping? Function()? shipping, PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax? Function()? tax, }) {return PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails(
  discountAmount: discountAmount != null ? discountAmount() : this.discountAmount,
  enforceArithmeticValidation: enforceArithmeticValidation != null ? enforceArithmeticValidation() : this.enforceArithmeticValidation,
  lineItems: lineItems != null ? lineItems() : this.lineItems,
  shipping: shipping != null ? shipping() : this.shipping,
  tax: tax != null ? tax() : this.tax,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails &&
          discountAmount == other.discountAmount &&
          enforceArithmeticValidation == other.enforceArithmeticValidation &&
          lineItems == other.lineItems &&
          shipping == other.shipping &&
          tax == other.tax;}
@override int get hashCode {return Object.hash(discountAmount, enforceArithmeticValidation, lineItems, shipping, tax);}
@override String toString() {return 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetails(discountAmount: $discountAmount, enforceArithmeticValidation: $enforceArithmeticValidation, lineItems: $lineItems, shipping: $shipping, tax: $tax)';}
}
