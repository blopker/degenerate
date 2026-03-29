// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_us_bank_account.dart';/// This sub-hash contains details about the ACH direct debit payment method options to pass to invoices created by the subscription.
final class SubscriptionsResourcePaymentMethodOptionsUsBankAccount {const SubscriptionsResourcePaymentMethodOptionsUsBankAccount({this.invoicePaymentMethodOptionsUsBankAccount});

factory SubscriptionsResourcePaymentMethodOptionsUsBankAccount.fromJson(Map<String, dynamic> json) { return SubscriptionsResourcePaymentMethodOptionsUsBankAccount(
  invoicePaymentMethodOptionsUsBankAccount: InvoicePaymentMethodOptionsUsBankAccount.canParse(json) ? InvoicePaymentMethodOptionsUsBankAccount.fromJson(json) : null,
); }

final InvoicePaymentMethodOptionsUsBankAccount? invoicePaymentMethodOptionsUsBankAccount;

/// At least one variant must be present.
bool get isValid { return invoicePaymentMethodOptionsUsBankAccount != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoicePaymentMethodOptionsUsBankAccount?.toJson(),
}; } 
 }
