// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_links_resource_custom_text_position.dart';/// Custom text that should be displayed after the payment confirmation button.
final class PaymentLinksResourceCustomTextAfterSubmit {const PaymentLinksResourceCustomTextAfterSubmit({this.paymentLinksResourceCustomTextPosition});

factory PaymentLinksResourceCustomTextAfterSubmit.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceCustomTextAfterSubmit(
  paymentLinksResourceCustomTextPosition: PaymentLinksResourceCustomTextPosition.canParse(json) ? PaymentLinksResourceCustomTextPosition.fromJson(json) : null,
); }

final PaymentLinksResourceCustomTextPosition? paymentLinksResourceCustomTextPosition;

/// At least one variant must be present.
bool get isValid { return paymentLinksResourceCustomTextPosition != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentLinksResourceCustomTextPosition?.toJson(),
}; } 
 }
