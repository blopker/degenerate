// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_acss_debit.dart';import 'invoice_payment_method_options_bancontact.dart';import 'invoice_payment_method_options_card.dart';import 'invoice_payment_method_options_customer_balance.dart';import 'invoice_payment_method_options_konbini.dart';import 'invoice_payment_method_options_payto.dart';import 'invoice_payment_method_options_sepa_debit.dart';import 'invoice_payment_method_options_us_bank_account.dart';/// 
@immutable final class InvoicesPaymentMethodOptions {const InvoicesPaymentMethodOptions({this.acssDebit = const Omittable.absent(), this.bancontact = const Omittable.absent(), this.card = const Omittable.absent(), this.customerBalance = const Omittable.absent(), this.konbini = const Omittable.absent(), this.payto = const Omittable.absent(), this.sepaDebit = const Omittable.absent(), this.usBankAccount = const Omittable.absent(), });

factory InvoicesPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return InvoicesPaymentMethodOptions(
  acssDebit: json.containsKey('acss_debit') ? Omittable(json['acss_debit'] != null ? InvoicePaymentMethodOptionsAcssDebit.fromJson(json['acss_debit'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  bancontact: json.containsKey('bancontact') ? Omittable(json['bancontact'] != null ? InvoicePaymentMethodOptionsBancontact.fromJson(json['bancontact'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  card: json.containsKey('card') ? Omittable(json['card'] != null ? InvoicePaymentMethodOptionsCard.fromJson(json['card'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  customerBalance: json.containsKey('customer_balance') ? Omittable(json['customer_balance'] != null ? InvoicePaymentMethodOptionsCustomerBalance.fromJson(json['customer_balance'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  konbini: json.containsKey('konbini') ? Omittable(json['konbini'] != null ? InvoicePaymentMethodOptionsKonbini.fromJson(json['konbini'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  payto: json.containsKey('payto') ? Omittable(json['payto'] != null ? InvoicePaymentMethodOptionsPayto.fromJson(json['payto'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  sepaDebit: json.containsKey('sepa_debit') ? Omittable(json['sepa_debit'] != null ? InvoicePaymentMethodOptionsSepaDebit.fromJson(json['sepa_debit'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  usBankAccount: json.containsKey('us_bank_account') ? Omittable(json['us_bank_account'] != null ? InvoicePaymentMethodOptionsUsBankAccount.fromJson(json['us_bank_account'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// If paying by `acss_debit`, this sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
final Omittable<InvoicePaymentMethodOptionsAcssDebit?> acssDebit;

/// If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
final Omittable<InvoicePaymentMethodOptionsBancontact?> bancontact;

/// If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
final Omittable<InvoicePaymentMethodOptionsCard?> card;

/// If paying by `customer_balance`, this sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
final Omittable<InvoicePaymentMethodOptionsCustomerBalance?> customerBalance;

/// If paying by `konbini`, this sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
final Omittable<InvoicePaymentMethodOptionsKonbini?> konbini;

/// If paying by `payto`, this sub-hash contains details about the PayTo payment method options to pass to the invoice’s PaymentIntent.
final Omittable<InvoicePaymentMethodOptionsPayto?> payto;

/// If paying by `sepa_debit`, this sub-hash contains details about the SEPA Direct Debit payment method options to pass to the invoice’s PaymentIntent.
final Omittable<InvoicePaymentMethodOptionsSepaDebit?> sepaDebit;

/// If paying by `us_bank_account`, this sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
final Omittable<InvoicePaymentMethodOptionsUsBankAccount?> usBankAccount;

Map<String, dynamic> toJson() { return {
  if (acssDebit.isPresent) 'acss_debit': acssDebit.value?.toJson(),
  if (bancontact.isPresent) 'bancontact': bancontact.value?.toJson(),
  if (card.isPresent) 'card': card.value?.toJson(),
  if (customerBalance.isPresent) 'customer_balance': customerBalance.value?.toJson(),
  if (konbini.isPresent) 'konbini': konbini.value?.toJson(),
  if (payto.isPresent) 'payto': payto.value?.toJson(),
  if (sepaDebit.isPresent) 'sepa_debit': sepaDebit.value?.toJson(),
  if (usBankAccount.isPresent) 'us_bank_account': usBankAccount.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'acss_debit', 'bancontact', 'card', 'customer_balance', 'konbini', 'payto', 'sepa_debit', 'us_bank_account'}.contains(key)); } 
InvoicesPaymentMethodOptions copyWith({Omittable<InvoicePaymentMethodOptionsAcssDebit?>? acssDebit, Omittable<InvoicePaymentMethodOptionsBancontact?>? bancontact, Omittable<InvoicePaymentMethodOptionsCard?>? card, Omittable<InvoicePaymentMethodOptionsCustomerBalance?>? customerBalance, Omittable<InvoicePaymentMethodOptionsKonbini?>? konbini, Omittable<InvoicePaymentMethodOptionsPayto?>? payto, Omittable<InvoicePaymentMethodOptionsSepaDebit?>? sepaDebit, Omittable<InvoicePaymentMethodOptionsUsBankAccount?>? usBankAccount, }) { return InvoicesPaymentMethodOptions(
  acssDebit: acssDebit ?? this.acssDebit,
  bancontact: bancontact ?? this.bancontact,
  card: card ?? this.card,
  customerBalance: customerBalance ?? this.customerBalance,
  konbini: konbini ?? this.konbini,
  payto: payto ?? this.payto,
  sepaDebit: sepaDebit ?? this.sepaDebit,
  usBankAccount: usBankAccount ?? this.usBankAccount,
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
