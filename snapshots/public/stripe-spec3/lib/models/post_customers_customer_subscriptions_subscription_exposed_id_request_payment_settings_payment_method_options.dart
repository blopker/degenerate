// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param10.dart';import 'invoice_payment_method_options_param11.dart';import 'invoice_payment_method_options_param12.dart';import 'invoice_payment_method_options_param13.dart';import 'invoice_payment_method_options_param14.dart';import 'invoice_payment_method_options_param8.dart';import 'invoice_payment_method_options_param9.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_acss_debit.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_bancontact.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_card.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_customer_balance.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_konbini.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_payto.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_sepa_debit.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options_us_bank_account.dart';import 'subscription_payment_method_options_param2.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions({this.acssDebit, this.bancontact, this.card, this.customerBalance, this.konbini, this.payto, this.sepaDebit, this.usBankAccount, });

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions(
  acssDebit: json['acss_debit'] != null ? OneOf2.parse(json['acss_debit'], fromA: (v) => InvoicePaymentMethodOptionsParam8.fromJson(v as Map<String, dynamic>), fromB: (v) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(v as String),) : null,
  bancontact: json['bancontact'] != null ? OneOf2.parse(json['bancontact'], fromA: (v) => InvoicePaymentMethodOptionsParam9.fromJson(v as Map<String, dynamic>), fromB: (v) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.fromJson(v as String),) : null,
  card: json['card'] != null ? OneOf2.parse(json['card'], fromA: (v) => SubscriptionPaymentMethodOptionsParam2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(v as String),) : null,
  customerBalance: json['customer_balance'] != null ? OneOf2.parse(json['customer_balance'], fromA: (v) => InvoicePaymentMethodOptionsParam10.fromJson(v as Map<String, dynamic>), fromB: (v) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(v as String),) : null,
  konbini: json['konbini'] != null ? OneOf2.parse(json['konbini'], fromA: (v) => InvoicePaymentMethodOptionsParam11.fromJson(v as Map<String, dynamic>), fromB: (v) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(v as String),) : null,
  payto: json['payto'] != null ? OneOf2.parse(json['payto'], fromA: (v) => InvoicePaymentMethodOptionsParam12.fromJson(v as Map<String, dynamic>), fromB: (v) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(v as String),) : null,
  sepaDebit: json['sepa_debit'] != null ? OneOf2.parse(json['sepa_debit'], fromA: (v) => InvoicePaymentMethodOptionsParam13.fromJson(v as Map<String, dynamic>), fromB: (v) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.fromJson(v as String),) : null,
  usBankAccount: json['us_bank_account'] != null ? OneOf2.parse(json['us_bank_account'], fromA: (v) => InvoicePaymentMethodOptionsParam14.fromJson(v as Map<String, dynamic>), fromB: (v) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(v as String),) : null,
); }

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsAcssDebit? acssDebit;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsBancontact? bancontact;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard? card;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance? customerBalance;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini? konbini;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto? payto;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsSepaDebit? sepaDebit;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccount? usBankAccount;

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
PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions copyWith({PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsAcssDebit Function()? acssDebit, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsBancontact Function()? bancontact, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard Function()? card, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance Function()? customerBalance, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini Function()? konbini, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto Function()? payto, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsSepaDebit Function()? sepaDebit, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccount Function()? usBankAccount, }) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions(
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
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions &&
          acssDebit == other.acssDebit &&
          bancontact == other.bancontact &&
          card == other.card &&
          customerBalance == other.customerBalance &&
          konbini == other.konbini &&
          payto == other.payto &&
          sepaDebit == other.sepaDebit &&
          usBankAccount == other.usBankAccount; } 
@override int get hashCode { return Object.hash(acssDebit, bancontact, card, customerBalance, konbini, payto, sepaDebit, usBankAccount); } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions(acssDebit: $acssDebit, bancontact: $bancontact, card: $card, customerBalance: $customerBalance, konbini: $konbini, payto: $payto, sepaDebit: $sepaDebit, usBankAccount: $usBankAccount)'; } 
 }
