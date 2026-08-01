// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_pages_checkout_session_custom_text_position.dart';/// 
@immutable final class PaymentPagesCheckoutSessionCustomText {const PaymentPagesCheckoutSessionCustomText({this.afterSubmit = const Omittable.absent(), this.shippingAddress = const Omittable.absent(), this.submit = const Omittable.absent(), this.termsOfServiceAcceptance = const Omittable.absent(), });

factory PaymentPagesCheckoutSessionCustomText.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionCustomText(
  afterSubmit: json.containsKey('after_submit') ? Omittable(json['after_submit'] != null ? PaymentPagesCheckoutSessionCustomTextPosition.fromJson(json['after_submit'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  shippingAddress: json.containsKey('shipping_address') ? Omittable(json['shipping_address'] != null ? PaymentPagesCheckoutSessionCustomTextPosition.fromJson(json['shipping_address'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  submit: json.containsKey('submit') ? Omittable(json['submit'] != null ? PaymentPagesCheckoutSessionCustomTextPosition.fromJson(json['submit'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  termsOfServiceAcceptance: json.containsKey('terms_of_service_acceptance') ? Omittable(json['terms_of_service_acceptance'] != null ? PaymentPagesCheckoutSessionCustomTextPosition.fromJson(json['terms_of_service_acceptance'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Custom text that should be displayed after the payment confirmation button.
final Omittable<PaymentPagesCheckoutSessionCustomTextPosition?> afterSubmit;

/// Custom text that should be displayed alongside shipping address collection.
final Omittable<PaymentPagesCheckoutSessionCustomTextPosition?> shippingAddress;

/// Custom text that should be displayed alongside the payment confirmation button.
final Omittable<PaymentPagesCheckoutSessionCustomTextPosition?> submit;

/// Custom text that should be displayed in place of the default terms of service agreement text.
final Omittable<PaymentPagesCheckoutSessionCustomTextPosition?> termsOfServiceAcceptance;

Map<String, dynamic> toJson() { return {
  if (afterSubmit.isPresent) 'after_submit': afterSubmit.value?.toJson(),
  if (shippingAddress.isPresent) 'shipping_address': shippingAddress.value?.toJson(),
  if (submit.isPresent) 'submit': submit.value?.toJson(),
  if (termsOfServiceAcceptance.isPresent) 'terms_of_service_acceptance': termsOfServiceAcceptance.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'after_submit', 'shipping_address', 'submit', 'terms_of_service_acceptance'}.contains(key)); } 
PaymentPagesCheckoutSessionCustomText copyWith({Omittable<PaymentPagesCheckoutSessionCustomTextPosition?>? afterSubmit, Omittable<PaymentPagesCheckoutSessionCustomTextPosition?>? shippingAddress, Omittable<PaymentPagesCheckoutSessionCustomTextPosition?>? submit, Omittable<PaymentPagesCheckoutSessionCustomTextPosition?>? termsOfServiceAcceptance, }) { return PaymentPagesCheckoutSessionCustomText(
  afterSubmit: afterSubmit ?? this.afterSubmit,
  shippingAddress: shippingAddress ?? this.shippingAddress,
  submit: submit ?? this.submit,
  termsOfServiceAcceptance: termsOfServiceAcceptance ?? this.termsOfServiceAcceptance,
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
