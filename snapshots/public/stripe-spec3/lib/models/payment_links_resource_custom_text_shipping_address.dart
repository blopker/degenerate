// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_links_resource_custom_text_position.dart';/// Custom text that should be displayed alongside shipping address collection.
final class PaymentLinksResourceCustomTextShippingAddress {const PaymentLinksResourceCustomTextShippingAddress({this.paymentLinksResourceCustomTextPosition});

factory PaymentLinksResourceCustomTextShippingAddress.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceCustomTextShippingAddress(
  paymentLinksResourceCustomTextPosition: PaymentLinksResourceCustomTextPosition.canParse(json) ? PaymentLinksResourceCustomTextPosition.fromJson(json) : null,
); }

final PaymentLinksResourceCustomTextPosition? paymentLinksResourceCustomTextPosition;

/// At least one variant must be present.
bool get isValid { return paymentLinksResourceCustomTextPosition != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentLinksResourceCustomTextPosition?.toJson(),
}; } 
 }
