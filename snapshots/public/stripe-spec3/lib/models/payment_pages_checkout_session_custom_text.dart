// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_pages_checkout_session_custom_text_position.dart';/// 
final class PaymentPagesCheckoutSessionCustomText {const PaymentPagesCheckoutSessionCustomText({this.afterSubmit, this.shippingAddress, this.submit, this.termsOfServiceAcceptance, });

factory PaymentPagesCheckoutSessionCustomText.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionCustomText(
  afterSubmit: json['after_submit'] != null ? PaymentPagesCheckoutSessionCustomTextPosition.fromJson(json['after_submit'] as Map<String, dynamic>) : null,
  shippingAddress: json['shipping_address'] != null ? PaymentPagesCheckoutSessionCustomTextPosition.fromJson(json['shipping_address'] as Map<String, dynamic>) : null,
  submit: json['submit'] != null ? PaymentPagesCheckoutSessionCustomTextPosition.fromJson(json['submit'] as Map<String, dynamic>) : null,
  termsOfServiceAcceptance: json['terms_of_service_acceptance'] != null ? PaymentPagesCheckoutSessionCustomTextPosition.fromJson(json['terms_of_service_acceptance'] as Map<String, dynamic>) : null,
); }

/// Custom text that should be displayed after the payment confirmation button.
final PaymentPagesCheckoutSessionCustomTextPosition? afterSubmit;

/// Custom text that should be displayed alongside shipping address collection.
final PaymentPagesCheckoutSessionCustomTextPosition? shippingAddress;

/// Custom text that should be displayed alongside the payment confirmation button.
final PaymentPagesCheckoutSessionCustomTextPosition? submit;

/// Custom text that should be displayed in place of the default terms of service agreement text.
final PaymentPagesCheckoutSessionCustomTextPosition? termsOfServiceAcceptance;

Map<String, dynamic> toJson() { return {
  if (afterSubmit != null) 'after_submit': afterSubmit?.toJson(),
  if (shippingAddress != null) 'shipping_address': shippingAddress?.toJson(),
  if (submit != null) 'submit': submit?.toJson(),
  if (termsOfServiceAcceptance != null) 'terms_of_service_acceptance': termsOfServiceAcceptance?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'after_submit', 'shipping_address', 'submit', 'terms_of_service_acceptance'}.contains(key)); } 
PaymentPagesCheckoutSessionCustomText copyWith({PaymentPagesCheckoutSessionCustomTextPosition? Function()? afterSubmit, PaymentPagesCheckoutSessionCustomTextPosition? Function()? shippingAddress, PaymentPagesCheckoutSessionCustomTextPosition? Function()? submit, PaymentPagesCheckoutSessionCustomTextPosition? Function()? termsOfServiceAcceptance, }) { return PaymentPagesCheckoutSessionCustomText(
  afterSubmit: afterSubmit != null ? afterSubmit() : this.afterSubmit,
  shippingAddress: shippingAddress != null ? shippingAddress() : this.shippingAddress,
  submit: submit != null ? submit() : this.submit,
  termsOfServiceAcceptance: termsOfServiceAcceptance != null ? termsOfServiceAcceptance() : this.termsOfServiceAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionCustomText &&
          afterSubmit == other.afterSubmit &&
          shippingAddress == other.shippingAddress &&
          submit == other.submit &&
          termsOfServiceAcceptance == other.termsOfServiceAcceptance; } 
@override int get hashCode { return Object.hash(afterSubmit, shippingAddress, submit, termsOfServiceAcceptance); } 
@override String toString() { return 'PaymentPagesCheckoutSessionCustomText(afterSubmit: $afterSubmit, shippingAddress: $shippingAddress, submit: $submit, termsOfServiceAcceptance: $termsOfServiceAcceptance)'; } 
 }
