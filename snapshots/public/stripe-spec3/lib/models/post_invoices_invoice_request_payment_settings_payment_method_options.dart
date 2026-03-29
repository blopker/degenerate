// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param23.dart';import 'invoice_payment_method_options_param24.dart';import 'invoice_payment_method_options_param25.dart';import 'invoice_payment_method_options_param26.dart';import 'invoice_payment_method_options_param27.dart';import 'invoice_payment_method_options_param28.dart';import 'invoice_payment_method_options_param29.dart';import 'invoice_payment_method_options_param30.dart';import 'post_invoices_invoice_request_payment_settings_payment_method_options_acss_debit.dart';import 'post_invoices_invoice_request_payment_settings_payment_method_options_bancontact.dart';import 'post_invoices_invoice_request_payment_settings_payment_method_options_card.dart';import 'post_invoices_invoice_request_payment_settings_payment_method_options_customer_balance.dart';import 'post_invoices_invoice_request_payment_settings_payment_method_options_konbini.dart';import 'post_invoices_invoice_request_payment_settings_payment_method_options_payto.dart';import 'post_invoices_invoice_request_payment_settings_payment_method_options_sepa_debit.dart';import 'post_invoices_invoice_request_payment_settings_payment_method_options_us_bank_account.dart';final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptions {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptions({this.acssDebit, this.bancontact, this.card, this.customerBalance, this.konbini, this.payto, this.sepaDebit, this.usBankAccount, });

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptions(
  acssDebit: json['acss_debit'] != null ? OneOf2.parse(json['acss_debit'], fromA: (v) => InvoicePaymentMethodOptionsParam23.fromJson(v as Map<String, dynamic>), fromB: (v) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(v as String),) : null,
  bancontact: json['bancontact'] != null ? OneOf2.parse(json['bancontact'], fromA: (v) => InvoicePaymentMethodOptionsParam24.fromJson(v as Map<String, dynamic>), fromB: (v) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.fromJson(v as String),) : null,
  card: json['card'] != null ? OneOf2.parse(json['card'], fromA: (v) => InvoicePaymentMethodOptionsParam25.fromJson(v as Map<String, dynamic>), fromB: (v) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(v as String),) : null,
  customerBalance: json['customer_balance'] != null ? OneOf2.parse(json['customer_balance'], fromA: (v) => InvoicePaymentMethodOptionsParam26.fromJson(v as Map<String, dynamic>), fromB: (v) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(v as String),) : null,
  konbini: json['konbini'] != null ? OneOf2.parse(json['konbini'], fromA: (v) => InvoicePaymentMethodOptionsParam27.fromJson(v as Map<String, dynamic>), fromB: (v) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(v as String),) : null,
  payto: json['payto'] != null ? OneOf2.parse(json['payto'], fromA: (v) => InvoicePaymentMethodOptionsParam28.fromJson(v as Map<String, dynamic>), fromB: (v) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(v as String),) : null,
  sepaDebit: json['sepa_debit'] != null ? OneOf2.parse(json['sepa_debit'], fromA: (v) => InvoicePaymentMethodOptionsParam29.fromJson(v as Map<String, dynamic>), fromB: (v) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.fromJson(v as String),) : null,
  usBankAccount: json['us_bank_account'] != null ? OneOf2.parse(json['us_bank_account'], fromA: (v) => InvoicePaymentMethodOptionsParam30.fromJson(v as Map<String, dynamic>), fromB: (v) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(v as String),) : null,
); }

final PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebit? acssDebit;

final PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontact? bancontact;

final PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCard? card;

final PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalance? customerBalance;

final PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbini? konbini;

final PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPayto? payto;

final PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebit? sepaDebit;

final PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccount? usBankAccount;

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
PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptions copyWith({PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebit Function()? acssDebit, PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontact Function()? bancontact, PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCard Function()? card, PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalance Function()? customerBalance, PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsKonbini Function()? konbini, PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPayto Function()? payto, PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebit Function()? sepaDebit, PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccount Function()? usBankAccount, }) { return PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptions(
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
      other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptions &&
          acssDebit == other.acssDebit &&
          bancontact == other.bancontact &&
          card == other.card &&
          customerBalance == other.customerBalance &&
          konbini == other.konbini &&
          payto == other.payto &&
          sepaDebit == other.sepaDebit &&
          usBankAccount == other.usBankAccount; } 
@override int get hashCode { return Object.hash(acssDebit, bancontact, card, customerBalance, konbini, payto, sepaDebit, usBankAccount); } 
@override String toString() { return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptions(acssDebit: $acssDebit, bancontact: $bancontact, card: $card, customerBalance: $customerBalance, konbini: $konbini, payto: $payto, sepaDebit: $sepaDebit, usBankAccount: $usBankAccount)'; } 
 }
