// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_customer_balance.dart';/// This sub-hash contains details about the Bank transfer payment method options to pass to invoices created by the subscription.
final class SubscriptionsResourcePaymentMethodOptionsCustomerBalance {const SubscriptionsResourcePaymentMethodOptionsCustomerBalance({this.invoicePaymentMethodOptionsCustomerBalance});

factory SubscriptionsResourcePaymentMethodOptionsCustomerBalance.fromJson(Map<String, dynamic> json) { return SubscriptionsResourcePaymentMethodOptionsCustomerBalance(
  invoicePaymentMethodOptionsCustomerBalance: InvoicePaymentMethodOptionsCustomerBalance.canParse(json) ? InvoicePaymentMethodOptionsCustomerBalance.fromJson(json) : null,
); }

final InvoicePaymentMethodOptionsCustomerBalance? invoicePaymentMethodOptionsCustomerBalance;

/// At least one variant must be present.
bool get isValid { return invoicePaymentMethodOptionsCustomerBalance != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoicePaymentMethodOptionsCustomerBalance?.toJson(),
}; } 
 }
