// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_links_resource_consent_collection.dart';/// When set, provides configuration to gather active consent from customers.
final class PaymentLinkConsentCollection {const PaymentLinkConsentCollection({this.paymentLinksResourceConsentCollection});

factory PaymentLinkConsentCollection.fromJson(Map<String, dynamic> json) { return PaymentLinkConsentCollection(
  paymentLinksResourceConsentCollection: PaymentLinksResourceConsentCollection.canParse(json) ? PaymentLinksResourceConsentCollection.fromJson(json) : null,
); }

final PaymentLinksResourceConsentCollection? paymentLinksResourceConsentCollection;

/// At least one variant must be present.
bool get isValid { return paymentLinksResourceConsentCollection != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentLinksResourceConsentCollection?.toJson(),
}; } 
 }
