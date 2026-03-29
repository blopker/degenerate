// GENERATED CODE - DO NOT MODIFY BY HAND

import 'subscriptions_resource_payment_method_options_acss_debit.dart';import 'subscriptions_resource_payment_method_options_bancontact.dart';import 'subscriptions_resource_payment_method_options_card.dart';import 'subscriptions_resource_payment_method_options_customer_balance.dart';import 'subscriptions_resource_payment_method_options_konbini.dart';import 'subscriptions_resource_payment_method_options_payto.dart';import 'subscriptions_resource_payment_method_options_sepa_debit.dart';import 'subscriptions_resource_payment_method_options_us_bank_account.dart';/// 
final class SubscriptionsResourcePaymentMethodOptions {const SubscriptionsResourcePaymentMethodOptions({this.acssDebit, this.bancontact, this.card, this.customerBalance, this.konbini, this.payto, this.sepaDebit, this.usBankAccount, });

factory SubscriptionsResourcePaymentMethodOptions.fromJson(Map<String, dynamic> json) { return SubscriptionsResourcePaymentMethodOptions(
  acssDebit: json['acss_debit'] != null ? SubscriptionsResourcePaymentMethodOptionsAcssDebit.fromJson(json['acss_debit'] as Map<String, dynamic>) : null,
  bancontact: json['bancontact'] != null ? SubscriptionsResourcePaymentMethodOptionsBancontact.fromJson(json['bancontact'] as Map<String, dynamic>) : null,
  card: json['card'] != null ? SubscriptionsResourcePaymentMethodOptionsCard.fromJson(json['card'] as Map<String, dynamic>) : null,
  customerBalance: json['customer_balance'] != null ? SubscriptionsResourcePaymentMethodOptionsCustomerBalance.fromJson(json['customer_balance'] as Map<String, dynamic>) : null,
  konbini: json['konbini'] != null ? SubscriptionsResourcePaymentMethodOptionsKonbini.fromJson(json['konbini'] as Map<String, dynamic>) : null,
  payto: json['payto'] != null ? SubscriptionsResourcePaymentMethodOptionsPayto.fromJson(json['payto'] as Map<String, dynamic>) : null,
  sepaDebit: json['sepa_debit'] != null ? SubscriptionsResourcePaymentMethodOptionsSepaDebit.fromJson(json['sepa_debit'] as Map<String, dynamic>) : null,
  usBankAccount: json['us_bank_account'] != null ? SubscriptionsResourcePaymentMethodOptionsUsBankAccount.fromJson(json['us_bank_account'] as Map<String, dynamic>) : null,
); }

/// This sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to invoices created by the subscription.
final SubscriptionsResourcePaymentMethodOptionsAcssDebit? acssDebit;

/// This sub-hash contains details about the Bancontact payment method options to pass to invoices created by the subscription.
final SubscriptionsResourcePaymentMethodOptionsBancontact? bancontact;

/// This sub-hash contains details about the Card payment method options to pass to invoices created by the subscription.
final SubscriptionsResourcePaymentMethodOptionsCard? card;

/// This sub-hash contains details about the Bank transfer payment method options to pass to invoices created by the subscription.
final SubscriptionsResourcePaymentMethodOptionsCustomerBalance? customerBalance;

/// This sub-hash contains details about the Konbini payment method options to pass to invoices created by the subscription.
final SubscriptionsResourcePaymentMethodOptionsKonbini? konbini;

/// This sub-hash contains details about the PayTo payment method options to pass to invoices created by the subscription.
final SubscriptionsResourcePaymentMethodOptionsPayto? payto;

/// This sub-hash contains details about the SEPA Direct Debit payment method options to pass to invoices created by the subscription.
final SubscriptionsResourcePaymentMethodOptionsSepaDebit? sepaDebit;

/// This sub-hash contains details about the ACH direct debit payment method options to pass to invoices created by the subscription.
final SubscriptionsResourcePaymentMethodOptionsUsBankAccount? usBankAccount;

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
static bool canParse(Map<String, dynamic> json) { return true; } 
SubscriptionsResourcePaymentMethodOptions copyWith({SubscriptionsResourcePaymentMethodOptionsAcssDebit? Function()? acssDebit, SubscriptionsResourcePaymentMethodOptionsBancontact? Function()? bancontact, SubscriptionsResourcePaymentMethodOptionsCard? Function()? card, SubscriptionsResourcePaymentMethodOptionsCustomerBalance? Function()? customerBalance, SubscriptionsResourcePaymentMethodOptionsKonbini? Function()? konbini, SubscriptionsResourcePaymentMethodOptionsPayto? Function()? payto, SubscriptionsResourcePaymentMethodOptionsSepaDebit? Function()? sepaDebit, SubscriptionsResourcePaymentMethodOptionsUsBankAccount? Function()? usBankAccount, }) { return SubscriptionsResourcePaymentMethodOptions(
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
      other is SubscriptionsResourcePaymentMethodOptions &&
          acssDebit == other.acssDebit &&
          bancontact == other.bancontact &&
          card == other.card &&
          customerBalance == other.customerBalance &&
          konbini == other.konbini &&
          payto == other.payto &&
          sepaDebit == other.sepaDebit &&
          usBankAccount == other.usBankAccount; } 
@override int get hashCode { return Object.hash(acssDebit, bancontact, card, customerBalance, konbini, payto, sepaDebit, usBankAccount); } 
@override String toString() { return 'SubscriptionsResourcePaymentMethodOptions(acssDebit: $acssDebit, bancontact: $bancontact, card: $card, customerBalance: $customerBalance, konbini: $konbini, payto: $payto, sepaDebit: $sepaDebit, usBankAccount: $usBankAccount)'; } 
 }
