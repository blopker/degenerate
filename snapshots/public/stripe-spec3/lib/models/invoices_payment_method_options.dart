// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_acss_debit.dart';import 'invoice_payment_method_options_bancontact.dart';import 'invoice_payment_method_options_card.dart';import 'invoice_payment_method_options_customer_balance.dart';import 'invoice_payment_method_options_konbini.dart';import 'invoice_payment_method_options_payto.dart';import 'invoice_payment_method_options_sepa_debit.dart';import 'invoice_payment_method_options_us_bank_account.dart';/// 
final class InvoicesPaymentMethodOptions {const InvoicesPaymentMethodOptions({this.acssDebit, this.bancontact, this.card, this.customerBalance, this.konbini, this.payto, this.sepaDebit, this.usBankAccount, });

factory InvoicesPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return InvoicesPaymentMethodOptions(
  acssDebit: json['acss_debit'] != null ? InvoicePaymentMethodOptionsAcssDebit.fromJson(json['acss_debit'] as Map<String, dynamic>) : null,
  bancontact: json['bancontact'] != null ? InvoicePaymentMethodOptionsBancontact.fromJson(json['bancontact'] as Map<String, dynamic>) : null,
  card: json['card'] != null ? InvoicePaymentMethodOptionsCard.fromJson(json['card'] as Map<String, dynamic>) : null,
  customerBalance: json['customer_balance'] != null ? InvoicePaymentMethodOptionsCustomerBalance.fromJson(json['customer_balance'] as Map<String, dynamic>) : null,
  konbini: json['konbini'] != null ? InvoicePaymentMethodOptionsKonbini.fromJson(json['konbini'] as Map<String, dynamic>) : null,
  payto: json['payto'] != null ? InvoicePaymentMethodOptionsPayto.fromJson(json['payto'] as Map<String, dynamic>) : null,
  sepaDebit: json['sepa_debit'] != null ? InvoicePaymentMethodOptionsSepaDebit.fromJson(json['sepa_debit'] as Map<String, dynamic>) : null,
  usBankAccount: json['us_bank_account'] != null ? InvoicePaymentMethodOptionsUsBankAccount.fromJson(json['us_bank_account'] as Map<String, dynamic>) : null,
); }

/// If paying by `acss_debit`, this sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
final InvoicePaymentMethodOptionsAcssDebit? acssDebit;

/// If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
final InvoicePaymentMethodOptionsBancontact? bancontact;

/// If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
final InvoicePaymentMethodOptionsCard? card;

/// If paying by `customer_balance`, this sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
final InvoicePaymentMethodOptionsCustomerBalance? customerBalance;

/// If paying by `konbini`, this sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
final InvoicePaymentMethodOptionsKonbini? konbini;

/// If paying by `payto`, this sub-hash contains details about the PayTo payment method options to pass to the invoice’s PaymentIntent.
final InvoicePaymentMethodOptionsPayto? payto;

/// If paying by `sepa_debit`, this sub-hash contains details about the SEPA Direct Debit payment method options to pass to the invoice’s PaymentIntent.
final InvoicePaymentMethodOptionsSepaDebit? sepaDebit;

/// If paying by `us_bank_account`, this sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
final InvoicePaymentMethodOptionsUsBankAccount? usBankAccount;

Map<String, dynamic> toJson() { return {
  if (acssDebit != null) 'acss_debit': acssDebit?.toJson(),
  if (bancontact != null) 'bancontact': bancontact?.toJson(),
  if (card != null) 'card': card?.toJson(),
  if (customerBalance != null) 'customer_balance': customerBalance?.toJson(),
  if (konbini != null) 'konbini': konbini?.toJson(),
  if (payto != null) 'payto': payto?.toJson(),
  if (sepaDebit != null) 'sepa_debit': sepaDebit?.toJson(),
  if (usBankAccount != null) 'us_bank_account': usBankAccount?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'acss_debit', 'bancontact', 'card', 'customer_balance', 'konbini', 'payto', 'sepa_debit', 'us_bank_account'}.contains(key)); } 
InvoicesPaymentMethodOptions copyWith({InvoicePaymentMethodOptionsAcssDebit? Function()? acssDebit, InvoicePaymentMethodOptionsBancontact? Function()? bancontact, InvoicePaymentMethodOptionsCard? Function()? card, InvoicePaymentMethodOptionsCustomerBalance? Function()? customerBalance, InvoicePaymentMethodOptionsKonbini? Function()? konbini, InvoicePaymentMethodOptionsPayto? Function()? payto, InvoicePaymentMethodOptionsSepaDebit? Function()? sepaDebit, InvoicePaymentMethodOptionsUsBankAccount? Function()? usBankAccount, }) { return InvoicesPaymentMethodOptions(
  acssDebit: acssDebit != null ? acssDebit() : this.acssDebit,
  bancontact: bancontact != null ? bancontact() : this.bancontact,
  card: card != null ? card() : this.card,
  customerBalance: customerBalance != null ? customerBalance() : this.customerBalance,
  konbini: konbini != null ? konbini() : this.konbini,
  payto: payto != null ? payto() : this.payto,
  sepaDebit: sepaDebit != null ? sepaDebit() : this.sepaDebit,
  usBankAccount: usBankAccount != null ? usBankAccount() : this.usBankAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicesPaymentMethodOptions &&
          acssDebit == other.acssDebit &&
          bancontact == other.bancontact &&
          card == other.card &&
          customerBalance == other.customerBalance &&
          konbini == other.konbini &&
          payto == other.payto &&
          sepaDebit == other.sepaDebit &&
          usBankAccount == other.usBankAccount; } 
@override int get hashCode { return Object.hash(acssDebit, bancontact, card, customerBalance, konbini, payto, sepaDebit, usBankAccount); } 
@override String toString() { return 'InvoicesPaymentMethodOptions(acssDebit: $acssDebit, bancontact: $bancontact, card: $card, customerBalance: $customerBalance, konbini: $konbini, payto: $payto, sepaDebit: $sepaDebit, usBankAccount: $usBankAccount)'; } 
 }
