// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param10.dart';import 'custom_text_position_param11.dart';import 'custom_text_position_param12.dart';import 'custom_text_position_param9.dart';import 'post_payment_links_payment_link_request_custom_text_after_submit.dart';import 'post_payment_links_payment_link_request_custom_text_shipping_address.dart';import 'post_payment_links_payment_link_request_custom_text_submit.dart';import 'post_payment_links_payment_link_request_custom_text_terms_of_service_acceptance.dart';/// Display additional text for your customers using custom text. You can't set this parameter if `ui_mode` is `custom`.
final class PostPaymentLinksPaymentLinkRequestCustomText {const PostPaymentLinksPaymentLinkRequestCustomText({this.afterSubmit, this.shippingAddress, this.submit, this.termsOfServiceAcceptance, });

factory PostPaymentLinksPaymentLinkRequestCustomText.fromJson(Map<String, dynamic> json) { return PostPaymentLinksPaymentLinkRequestCustomText(
  afterSubmit: json['after_submit'] != null ? OneOf2.parse(json['after_submit'], fromA: (v) => CustomTextPositionParam9.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2.fromJson(v as String),) : null,
  shippingAddress: json['shipping_address'] != null ? OneOf2.parse(json['shipping_address'], fromA: (v) => CustomTextPositionParam10.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2.fromJson(v as String),) : null,
  submit: json['submit'] != null ? OneOf2.parse(json['submit'], fromA: (v) => CustomTextPositionParam11.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2.fromJson(v as String),) : null,
  termsOfServiceAcceptance: json['terms_of_service_acceptance'] != null ? OneOf2.parse(json['terms_of_service_acceptance'], fromA: (v) => CustomTextPositionParam12.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2.fromJson(v as String),) : null,
); }

final PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmit? afterSubmit;

final PostPaymentLinksPaymentLinkRequestCustomTextShippingAddress? shippingAddress;

final PostPaymentLinksPaymentLinkRequestCustomTextSubmit? submit;

final PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptance? termsOfServiceAcceptance;

Map<String, dynamic> toJson() { return {
  if (afterSubmit != null) 'after_submit': afterSubmit?.toJson(),
  if (shippingAddress != null) 'shipping_address': shippingAddress?.toJson(),
  if (submit != null) 'submit': submit?.toJson(),
  if (termsOfServiceAcceptance != null) 'terms_of_service_acceptance': termsOfServiceAcceptance?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'after_submit', 'shipping_address', 'submit', 'terms_of_service_acceptance'}.contains(key)); } 
PostPaymentLinksPaymentLinkRequestCustomText copyWith({PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmit Function()? afterSubmit, PostPaymentLinksPaymentLinkRequestCustomTextShippingAddress Function()? shippingAddress, PostPaymentLinksPaymentLinkRequestCustomTextSubmit Function()? submit, PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptance Function()? termsOfServiceAcceptance, }) { return PostPaymentLinksPaymentLinkRequestCustomText(
  afterSubmit: afterSubmit != null ? afterSubmit() : this.afterSubmit,
  shippingAddress: shippingAddress != null ? shippingAddress() : this.shippingAddress,
  submit: submit != null ? submit() : this.submit,
  termsOfServiceAcceptance: termsOfServiceAcceptance != null ? termsOfServiceAcceptance() : this.termsOfServiceAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestCustomText &&
          afterSubmit == other.afterSubmit &&
          shippingAddress == other.shippingAddress &&
          submit == other.submit &&
          termsOfServiceAcceptance == other.termsOfServiceAcceptance; } 
@override int get hashCode { return Object.hash(afterSubmit, shippingAddress, submit, termsOfServiceAcceptance); } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestCustomText(afterSubmit: $afterSubmit, shippingAddress: $shippingAddress, submit: $submit, termsOfServiceAcceptance: $termsOfServiceAcceptance)'; } 
 }
