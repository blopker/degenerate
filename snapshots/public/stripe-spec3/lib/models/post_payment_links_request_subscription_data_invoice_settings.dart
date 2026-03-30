// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_links_request_subscription_data_invoice_settings_issuer.dart';final class PostPaymentLinksRequestSubscriptionDataInvoiceSettings {const PostPaymentLinksRequestSubscriptionDataInvoiceSettings({this.issuer});

factory PostPaymentLinksRequestSubscriptionDataInvoiceSettings.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestSubscriptionDataInvoiceSettings(
  issuer: json['issuer'] != null ? PostPaymentLinksRequestSubscriptionDataInvoiceSettingsIssuer.fromJson(json['issuer'] as Map<String, dynamic>) : null,
); }

final PostPaymentLinksRequestSubscriptionDataInvoiceSettingsIssuer? issuer;

Map<String, dynamic> toJson() { return {
  if (issuer != null) 'issuer': issuer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'issuer'}.contains(key)); } 
PostPaymentLinksRequestSubscriptionDataInvoiceSettings copyWith({PostPaymentLinksRequestSubscriptionDataInvoiceSettingsIssuer Function()? issuer}) { return PostPaymentLinksRequestSubscriptionDataInvoiceSettings(
  issuer: issuer != null ? issuer() : this.issuer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestSubscriptionDataInvoiceSettings &&
          issuer == other.issuer; } 
@override int get hashCode { return issuer.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestSubscriptionDataInvoiceSettings(issuer: $issuer)'; } 
 }
