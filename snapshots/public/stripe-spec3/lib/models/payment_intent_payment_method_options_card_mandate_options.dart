// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_method_options_card_mandate_options.dart';/// Configuration options for setting up an eMandate for cards issued in India.
final class PaymentIntentPaymentMethodOptionsCardMandateOptions {const PaymentIntentPaymentMethodOptionsCardMandateOptions({this.paymentMethodOptionsCardMandateOptions});

factory PaymentIntentPaymentMethodOptionsCardMandateOptions.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsCardMandateOptions(
  paymentMethodOptionsCardMandateOptions: PaymentMethodOptionsCardMandateOptions.canParse(json) ? PaymentMethodOptionsCardMandateOptions.fromJson(json) : null,
); }

final PaymentMethodOptionsCardMandateOptions? paymentMethodOptionsCardMandateOptions;

/// At least one variant must be present.
bool get isValid { return paymentMethodOptionsCardMandateOptions != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentMethodOptionsCardMandateOptions?.toJson(),
}; } 
 }
