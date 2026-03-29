// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_sepa_debit.dart';/// If paying by `sepa_debit`, this sub-hash contains details about the SEPA Direct Debit payment method options to pass to the invoice’s PaymentIntent.
final class InvoicesPaymentMethodOptionsSepaDebit {const InvoicesPaymentMethodOptionsSepaDebit({this.invoicePaymentMethodOptionsSepaDebit});

factory InvoicesPaymentMethodOptionsSepaDebit.fromJson(Map<String, dynamic> json) { return InvoicesPaymentMethodOptionsSepaDebit(
  invoicePaymentMethodOptionsSepaDebit: InvoicePaymentMethodOptionsSepaDebit.canParse(json) ? InvoicePaymentMethodOptionsSepaDebit.fromJson(json) : null,
); }

final InvoicePaymentMethodOptionsSepaDebit? invoicePaymentMethodOptionsSepaDebit;

/// At least one variant must be present.
bool get isValid { return invoicePaymentMethodOptionsSepaDebit != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoicePaymentMethodOptionsSepaDebit?.toJson(),
}; } 
 }
