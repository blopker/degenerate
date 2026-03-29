// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_links_resource_restrictions.dart';/// Settings that restrict the usage of a payment link.
final class PaymentLinkRestrictions {const PaymentLinkRestrictions({this.paymentLinksResourceRestrictions});

factory PaymentLinkRestrictions.fromJson(Map<String, dynamic> json) { return PaymentLinkRestrictions(
  paymentLinksResourceRestrictions: PaymentLinksResourceRestrictions.canParse(json) ? PaymentLinksResourceRestrictions.fromJson(json) : null,
); }

final PaymentLinksResourceRestrictions? paymentLinksResourceRestrictions;

/// At least one variant must be present.
bool get isValid { return paymentLinksResourceRestrictions != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentLinksResourceRestrictions?.toJson(),
}; } 
 }
