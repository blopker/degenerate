// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscriptions_request_payment_settings_payment_method_options_acss_debit.dart';import 'post_subscriptions_request_payment_settings_payment_method_options_bancontact.dart';import 'post_subscriptions_request_payment_settings_payment_method_options_card.dart';import 'post_subscriptions_request_payment_settings_payment_method_options_customer_balance.dart';import 'post_subscriptions_request_payment_settings_payment_method_options_konbini.dart';import 'post_subscriptions_request_payment_settings_payment_method_options_payto.dart';import 'post_subscriptions_request_payment_settings_payment_method_options_sepa_debit.dart';import 'post_subscriptions_request_payment_settings_payment_method_options_us_bank_account.dart';@immutable final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptions {const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptions({this.acssDebit, this.bancontact, this.card, this.customerBalance, this.konbini, this.payto, this.sepaDebit, this.usBankAccount, });

factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PostSubscriptionsRequestPaymentSettingsPaymentMethodOptions(
  acssDebit: json['acss_debit'] != null ? PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit.fromJson(json['acss_debit']) : null,
  bancontact: json['bancontact'] != null ? PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact.fromJson(json['bancontact']) : null,
  card: json['card'] != null ? PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCard.fromJson(json['card']) : null,
  customerBalance: json['customer_balance'] != null ? PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance.fromJson(json['customer_balance']) : null,
  konbini: json['konbini'] != null ? PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini.fromJson(json['konbini']) : null,
  payto: json['payto'] != null ? PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPayto.fromJson(json['payto']) : null,
  sepaDebit: json['sepa_debit'] != null ? PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebit.fromJson(json['sepa_debit']) : null,
  usBankAccount: json['us_bank_account'] != null ? PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount.fromJson(json['us_bank_account']) : null,
); }

final PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit? acssDebit;

final PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact? bancontact;

final PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCard? card;

final PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance? customerBalance;

final PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini? konbini;

final PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPayto? payto;

final PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebit? sepaDebit;

final PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount? usBankAccount;

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
PostSubscriptionsRequestPaymentSettingsPaymentMethodOptions copyWith({PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit? Function()? acssDebit, PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact? Function()? bancontact, PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCard? Function()? card, PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance? Function()? customerBalance, PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini? Function()? konbini, PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPayto? Function()? payto, PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsSepaDebit? Function()? sepaDebit, PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsUsBankAccount? Function()? usBankAccount, }) { return PostSubscriptionsRequestPaymentSettingsPaymentMethodOptions(
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
      other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptions &&
          acssDebit == other.acssDebit &&
          bancontact == other.bancontact &&
          card == other.card &&
          customerBalance == other.customerBalance &&
          konbini == other.konbini &&
          payto == other.payto &&
          sepaDebit == other.sepaDebit &&
          usBankAccount == other.usBankAccount; } 
@override int get hashCode { return Object.hash(acssDebit, bancontact, card, customerBalance, konbini, payto, sepaDebit, usBankAccount); } 
@override String toString() { return 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptions(acssDebit: $acssDebit, bancontact: $bancontact, card: $card, customerBalance: $customerBalance, konbini: $konbini, payto: $payto, sepaDebit: $sepaDebit, usBankAccount: $usBankAccount)'; } 
 }
