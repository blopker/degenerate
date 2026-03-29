// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_card.dart';/// If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
final class InvoicesPaymentMethodOptionsCard {const InvoicesPaymentMethodOptionsCard({this.invoicePaymentMethodOptionsCard});

factory InvoicesPaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return InvoicesPaymentMethodOptionsCard(
  invoicePaymentMethodOptionsCard: InvoicePaymentMethodOptionsCard.canParse(json) ? InvoicePaymentMethodOptionsCard.fromJson(json) : null,
); }

final InvoicePaymentMethodOptionsCard? invoicePaymentMethodOptionsCard;

/// At least one variant must be present.
bool get isValid { return invoicePaymentMethodOptionsCard != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoicePaymentMethodOptionsCard?.toJson(),
}; } 
 }
