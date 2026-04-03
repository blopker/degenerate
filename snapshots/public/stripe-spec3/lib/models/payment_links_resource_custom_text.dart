// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_links_resource_custom_text_position.dart';/// 
@immutable final class PaymentLinksResourceCustomText {const PaymentLinksResourceCustomText({this.afterSubmit, this.shippingAddress, this.submit, this.termsOfServiceAcceptance, });

factory PaymentLinksResourceCustomText.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceCustomText(
  afterSubmit: json['after_submit'] != null ? PaymentLinksResourceCustomTextPosition.fromJson(json['after_submit'] as Map<String, dynamic>) : null,
  shippingAddress: json['shipping_address'] != null ? PaymentLinksResourceCustomTextPosition.fromJson(json['shipping_address'] as Map<String, dynamic>) : null,
  submit: json['submit'] != null ? PaymentLinksResourceCustomTextPosition.fromJson(json['submit'] as Map<String, dynamic>) : null,
  termsOfServiceAcceptance: json['terms_of_service_acceptance'] != null ? PaymentLinksResourceCustomTextPosition.fromJson(json['terms_of_service_acceptance'] as Map<String, dynamic>) : null,
); }

/// Custom text that should be displayed after the payment confirmation button.
final PaymentLinksResourceCustomTextPosition? afterSubmit;

/// Custom text that should be displayed alongside shipping address collection.
final PaymentLinksResourceCustomTextPosition? shippingAddress;

/// Custom text that should be displayed alongside the payment confirmation button.
final PaymentLinksResourceCustomTextPosition? submit;

/// Custom text that should be displayed in place of the default terms of service agreement text.
final PaymentLinksResourceCustomTextPosition? termsOfServiceAcceptance;

Map<String, dynamic> toJson() { return {
  if (afterSubmit != null) 'after_submit': afterSubmit?.toJson(),
  if (shippingAddress != null) 'shipping_address': shippingAddress?.toJson(),
  if (submit != null) 'submit': submit?.toJson(),
  if (termsOfServiceAcceptance != null) 'terms_of_service_acceptance': termsOfServiceAcceptance?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'after_submit', 'shipping_address', 'submit', 'terms_of_service_acceptance'}.contains(key)); } 
PaymentLinksResourceCustomText copyWith({PaymentLinksResourceCustomTextPosition? Function()? afterSubmit, PaymentLinksResourceCustomTextPosition? Function()? shippingAddress, PaymentLinksResourceCustomTextPosition? Function()? submit, PaymentLinksResourceCustomTextPosition? Function()? termsOfServiceAcceptance, }) { return PaymentLinksResourceCustomText(
  afterSubmit: afterSubmit != null ? afterSubmit() : this.afterSubmit,
  shippingAddress: shippingAddress != null ? shippingAddress() : this.shippingAddress,
  submit: submit != null ? submit() : this.submit,
  termsOfServiceAcceptance: termsOfServiceAcceptance != null ? termsOfServiceAcceptance() : this.termsOfServiceAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceCustomText &&
          afterSubmit == other.afterSubmit &&
          shippingAddress == other.shippingAddress &&
          submit == other.submit &&
          termsOfServiceAcceptance == other.termsOfServiceAcceptance; } 
@override int get hashCode { return Object.hash(afterSubmit, shippingAddress, submit, termsOfServiceAcceptance); } 
@override String toString() { return 'PaymentLinksResourceCustomText(afterSubmit: $afterSubmit, shippingAddress: $shippingAddress, submit: $submit, termsOfServiceAcceptance: $termsOfServiceAcceptance)'; } 
 }
