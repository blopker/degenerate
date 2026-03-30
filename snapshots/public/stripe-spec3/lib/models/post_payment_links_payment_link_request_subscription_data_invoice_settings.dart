// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_links_payment_link_request_subscription_data_invoice_settings_issuer.dart';final class PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettings {const PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettings({this.issuer});

factory PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettings.fromJson(Map<String, dynamic> json) { return PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettings(
  issuer: json['issuer'] != null ? PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuer.fromJson(json['issuer'] as Map<String, dynamic>) : null,
); }

final PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuer? issuer;

Map<String, dynamic> toJson() { return {
  if (issuer != null) 'issuer': issuer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'issuer'}.contains(key)); } 
PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettings copyWith({PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuer Function()? issuer}) { return PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettings(
  issuer: issuer != null ? issuer() : this.issuer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettings &&
          issuer == other.issuer; } 
@override int get hashCode { return issuer.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettings(issuer: $issuer)'; } 
 }
