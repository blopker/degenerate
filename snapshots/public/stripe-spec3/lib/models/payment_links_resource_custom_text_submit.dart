// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_links_resource_custom_text_position.dart';/// Custom text that should be displayed alongside the payment confirmation button.
final class PaymentLinksResourceCustomTextSubmit {const PaymentLinksResourceCustomTextSubmit({this.paymentLinksResourceCustomTextPosition});

factory PaymentLinksResourceCustomTextSubmit.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceCustomTextSubmit(
  paymentLinksResourceCustomTextPosition: PaymentLinksResourceCustomTextPosition.canParse(json) ? PaymentLinksResourceCustomTextPosition.fromJson(json) : null,
); }

final PaymentLinksResourceCustomTextPosition? paymentLinksResourceCustomTextPosition;

/// At least one variant must be present.
bool get isValid { return paymentLinksResourceCustomTextPosition != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentLinksResourceCustomTextPosition?.toJson(),
}; } 
 }
