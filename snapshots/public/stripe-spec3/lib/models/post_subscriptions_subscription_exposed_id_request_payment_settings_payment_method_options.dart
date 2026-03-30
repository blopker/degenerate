// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param38.dart';import 'invoice_payment_method_options_param39.dart';import 'invoice_payment_method_options_param40.dart';import 'invoice_payment_method_options_param41.dart';import 'invoice_payment_method_options_param42.dart';import 'invoice_payment_method_options_param43.dart';import 'invoice_payment_method_options_param44.dart';import 'post_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_acss_debit.dart';import 'post_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_bancontact.dart';import 'post_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_card.dart';import 'post_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_customer_balance.dart';import 'post_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_konbini.dart';import 'post_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_payto.dart';import 'post_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_sepa_debit.dart';import 'post_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_us_bank_account.dart';import 'subscription_payment_method_options_param4.dart';final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions {const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions({this.acssDebit, this.bancontact, this.card, this.customerBalance, this.konbini, this.payto, this.sepaDebit, this.usBankAccount, });

factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions(
  acssDebit: json['acss_debit'] != null ? OneOf2.parse(json['acss_debit'], fromA: (v) => InvoicePaymentMethodOptionsParam38.fromJson(v as Map<String, dynamic>), fromB: (v) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(v as String),) : null,
  bancontact: json['bancontact'] != null ? OneOf2.parse(json['bancontact'], fromA: (v) => InvoicePaymentMethodOptionsParam39.fromJson(v as Map<String, dynamic>), fromB: (v) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.fromJson(v as String),) : null,
  card: json['card'] != null ? OneOf2.parse(json['card'], fromA: (v) => SubscriptionPaymentMethodOptionsParam4.fromJson(v as Map<String, dynamic>), fromB: (v) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(v as String),) : null,
  customerBalance: json['customer_balance'] != null ? OneOf2.parse(json['customer_balance'], fromA: (v) => InvoicePaymentMethodOptionsParam40.fromJson(v as Map<String, dynamic>), fromB: (v) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(v as String),) : null,
  konbini: json['konbini'] != null ? OneOf2.parse(json['konbini'], fromA: (v) => InvoicePaymentMethodOptionsParam41.fromJson(v as Map<String, dynamic>), fromB: (v) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(v as String),) : null,
  payto: json['payto'] != null ? OneOf2.parse(json['payto'], fromA: (v) => InvoicePaymentMethodOptionsParam42.fromJson(v as Map<String, dynamic>), fromB: (v) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(v as String),) : null,
  sepaDebit: json['sepa_debit'] != null ? OneOf2.parse(json['sepa_debit'], fromA: (v) => InvoicePaymentMethodOptionsParam43.fromJson(v as Map<String, dynamic>), fromB: (v) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.fromJson(v as String),) : null,
  usBankAccount: json['us_bank_account'] != null ? OneOf2.parse(json['us_bank_account'], fromA: (v) => InvoicePaymentMethodOptionsParam44.fromJson(v as Map<String, dynamic>), fromB: (v) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(v as String),) : null,
); }

final PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsAcssDebit? acssDebit;

final PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsBancontact? bancontact;

final PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard? card;

final PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance? customerBalance;

final PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini? konbini;

final PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto? payto;

final PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsSepaDebit? sepaDebit;

final PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccount? usBankAccount;

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
PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions copyWith({PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsAcssDebit Function()? acssDebit, PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsBancontact Function()? bancontact, PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard Function()? card, PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance Function()? customerBalance, PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini Function()? konbini, PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto Function()? payto, PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsSepaDebit Function()? sepaDebit, PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccount Function()? usBankAccount, }) { return PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions(
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
      other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions &&
          acssDebit == other.acssDebit &&
          bancontact == other.bancontact &&
          card == other.card &&
          customerBalance == other.customerBalance &&
          konbini == other.konbini &&
          payto == other.payto &&
          sepaDebit == other.sepaDebit &&
          usBankAccount == other.usBankAccount; } 
@override int get hashCode { return Object.hash(acssDebit, bancontact, card, customerBalance, konbini, payto, sepaDebit, usBankAccount); } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions(acssDebit: $acssDebit, bancontact: $bancontact, card: $card, customerBalance: $customerBalance, konbini: $konbini, payto: $payto, sepaDebit: $sepaDebit, usBankAccount: $usBankAccount)'; } 
 }
