// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_checkout_sessions_request_custom_text_after_submit.dart';import 'post_checkout_sessions_request_custom_text_shipping_address.dart';import 'post_checkout_sessions_request_custom_text_submit.dart';import 'post_checkout_sessions_request_custom_text_terms_of_service_acceptance.dart';/// Display additional text for your customers using custom text. You can't set this parameter if `ui_mode` is `custom`.
@immutable final class PostCheckoutSessionsRequestCustomText {const PostCheckoutSessionsRequestCustomText({this.afterSubmit, this.shippingAddress, this.submit, this.termsOfServiceAcceptance, });

factory PostCheckoutSessionsRequestCustomText.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestCustomText(
  afterSubmit: json['after_submit'] != null ? PostCheckoutSessionsRequestCustomTextAfterSubmit.fromJson(json['after_submit']) : null,
  shippingAddress: json['shipping_address'] != null ? PostCheckoutSessionsRequestCustomTextShippingAddress.fromJson(json['shipping_address']) : null,
  submit: json['submit'] != null ? PostCheckoutSessionsRequestCustomTextSubmit.fromJson(json['submit']) : null,
  termsOfServiceAcceptance: json['terms_of_service_acceptance'] != null ? PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptance.fromJson(json['terms_of_service_acceptance']) : null,
); }

final PostCheckoutSessionsRequestCustomTextAfterSubmit? afterSubmit;

final PostCheckoutSessionsRequestCustomTextShippingAddress? shippingAddress;

final PostCheckoutSessionsRequestCustomTextSubmit? submit;

final PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptance? termsOfServiceAcceptance;

Map<String, dynamic> toJson() { return {
  if (afterSubmit != null) 'after_submit': afterSubmit?.toJson(),
  if (shippingAddress != null) 'shipping_address': shippingAddress?.toJson(),
  if (submit != null) 'submit': submit?.toJson(),
  if (termsOfServiceAcceptance != null) 'terms_of_service_acceptance': termsOfServiceAcceptance?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'after_submit', 'shipping_address', 'submit', 'terms_of_service_acceptance'}.contains(key)); } 
PostCheckoutSessionsRequestCustomText copyWith({PostCheckoutSessionsRequestCustomTextAfterSubmit? Function()? afterSubmit, PostCheckoutSessionsRequestCustomTextShippingAddress? Function()? shippingAddress, PostCheckoutSessionsRequestCustomTextSubmit? Function()? submit, PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptance? Function()? termsOfServiceAcceptance, }) { return PostCheckoutSessionsRequestCustomText(
  afterSubmit: afterSubmit != null ? afterSubmit() : this.afterSubmit,
  shippingAddress: shippingAddress != null ? shippingAddress() : this.shippingAddress,
  submit: submit != null ? submit() : this.submit,
  termsOfServiceAcceptance: termsOfServiceAcceptance != null ? termsOfServiceAcceptance() : this.termsOfServiceAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestCustomText &&
          afterSubmit == other.afterSubmit &&
          shippingAddress == other.shippingAddress &&
          submit == other.submit &&
          termsOfServiceAcceptance == other.termsOfServiceAcceptance; } 
@override int get hashCode { return Object.hash(afterSubmit, shippingAddress, submit, termsOfServiceAcceptance); } 
@override String toString() { return 'PostCheckoutSessionsRequestCustomText(afterSubmit: $afterSubmit, shippingAddress: $shippingAddress, submit: $submit, termsOfServiceAcceptance: $termsOfServiceAcceptance)'; } 
 }
