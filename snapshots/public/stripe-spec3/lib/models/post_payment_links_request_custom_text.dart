// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_links_request_custom_text_after_submit.dart';import 'post_payment_links_request_custom_text_shipping_address.dart';import 'post_payment_links_request_custom_text_submit.dart';import 'post_payment_links_request_custom_text_terms_of_service_acceptance.dart';/// Display additional text for your customers using custom text. You can't set this parameter if `ui_mode` is `custom`.
@immutable final class PostPaymentLinksRequestCustomText {const PostPaymentLinksRequestCustomText({this.afterSubmit, this.shippingAddress, this.submit, this.termsOfServiceAcceptance, });

factory PostPaymentLinksRequestCustomText.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestCustomText(
  afterSubmit: json['after_submit'] != null ? PostPaymentLinksRequestCustomTextAfterSubmit.fromJson(json['after_submit']) : null,
  shippingAddress: json['shipping_address'] != null ? PostPaymentLinksRequestCustomTextShippingAddress.fromJson(json['shipping_address']) : null,
  submit: json['submit'] != null ? PostPaymentLinksRequestCustomTextSubmit.fromJson(json['submit']) : null,
  termsOfServiceAcceptance: json['terms_of_service_acceptance'] != null ? PostPaymentLinksRequestCustomTextTermsOfServiceAcceptance.fromJson(json['terms_of_service_acceptance']) : null,
); }

final PostPaymentLinksRequestCustomTextAfterSubmit? afterSubmit;

final PostPaymentLinksRequestCustomTextShippingAddress? shippingAddress;

final PostPaymentLinksRequestCustomTextSubmit? submit;

final PostPaymentLinksRequestCustomTextTermsOfServiceAcceptance? termsOfServiceAcceptance;

Map<String, dynamic> toJson() { return {
  if (afterSubmit != null) 'after_submit': afterSubmit?.toJson(),
  if (shippingAddress != null) 'shipping_address': shippingAddress?.toJson(),
  if (submit != null) 'submit': submit?.toJson(),
  if (termsOfServiceAcceptance != null) 'terms_of_service_acceptance': termsOfServiceAcceptance?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'after_submit', 'shipping_address', 'submit', 'terms_of_service_acceptance'}.contains(key)); } 
PostPaymentLinksRequestCustomText copyWith({PostPaymentLinksRequestCustomTextAfterSubmit? Function()? afterSubmit, PostPaymentLinksRequestCustomTextShippingAddress? Function()? shippingAddress, PostPaymentLinksRequestCustomTextSubmit? Function()? submit, PostPaymentLinksRequestCustomTextTermsOfServiceAcceptance? Function()? termsOfServiceAcceptance, }) { return PostPaymentLinksRequestCustomText(
  afterSubmit: afterSubmit != null ? afterSubmit() : this.afterSubmit,
  shippingAddress: shippingAddress != null ? shippingAddress() : this.shippingAddress,
  submit: submit != null ? submit() : this.submit,
  termsOfServiceAcceptance: termsOfServiceAcceptance != null ? termsOfServiceAcceptance() : this.termsOfServiceAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestCustomText &&
          afterSubmit == other.afterSubmit &&
          shippingAddress == other.shippingAddress &&
          submit == other.submit &&
          termsOfServiceAcceptance == other.termsOfServiceAcceptance; } 
@override int get hashCode { return Object.hash(afterSubmit, shippingAddress, submit, termsOfServiceAcceptance); } 
@override String toString() { return 'PostPaymentLinksRequestCustomText(afterSubmit: $afterSubmit, shippingAddress: $shippingAddress, submit: $submit, termsOfServiceAcceptance: $termsOfServiceAcceptance)'; } 
 }
