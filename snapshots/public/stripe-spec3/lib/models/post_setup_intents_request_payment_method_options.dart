// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_setup_intents_request_payment_method_options_acss_debit.dart';import 'post_setup_intents_request_payment_method_options_amazon_pay.dart';import 'post_setup_intents_request_payment_method_options_bacs_debit.dart';import 'post_setup_intents_request_payment_method_options_card.dart';import 'post_setup_intents_request_payment_method_options_card_present.dart';import 'post_setup_intents_request_payment_method_options_klarna.dart';import 'post_setup_intents_request_payment_method_options_link.dart';import 'post_setup_intents_request_payment_method_options_paypal.dart';import 'post_setup_intents_request_payment_method_options_payto.dart';import 'post_setup_intents_request_payment_method_options_sepa_debit.dart';import 'post_setup_intents_request_payment_method_options_us_bank_account.dart';/// Payment method-specific configuration for this SetupIntent.
final class PostSetupIntentsRequestPaymentMethodOptions {const PostSetupIntentsRequestPaymentMethodOptions({this.acssDebit, this.amazonPay, this.bacsDebit, this.card, this.cardPresent, this.klarna, this.link, this.paypal, this.payto, this.sepaDebit, this.usBankAccount, });

factory PostSetupIntentsRequestPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptions(
  acssDebit: json['acss_debit'] != null ? PostSetupIntentsRequestPaymentMethodOptionsAcssDebit.fromJson(json['acss_debit'] as Map<String, dynamic>) : null,
  amazonPay: json['amazon_pay'] != null ? PostSetupIntentsRequestPaymentMethodOptionsAmazonPay.fromJson(json['amazon_pay'] as Map<String, dynamic>) : null,
  bacsDebit: json['bacs_debit'] != null ? PostSetupIntentsRequestPaymentMethodOptionsBacsDebit.fromJson(json['bacs_debit'] as Map<String, dynamic>) : null,
  card: json['card'] != null ? PostSetupIntentsRequestPaymentMethodOptionsCard.fromJson(json['card'] as Map<String, dynamic>) : null,
  cardPresent: json['card_present'] != null ? PostSetupIntentsRequestPaymentMethodOptionsCardPresent.fromJson(json['card_present'] as Map<String, dynamic>) : null,
  klarna: json['klarna'] != null ? PostSetupIntentsRequestPaymentMethodOptionsKlarna.fromJson(json['klarna'] as Map<String, dynamic>) : null,
  link: json['link'] != null ? PostSetupIntentsRequestPaymentMethodOptionsLink.fromJson(json['link'] as Map<String, dynamic>) : null,
  paypal: json['paypal'] != null ? PostSetupIntentsRequestPaymentMethodOptionsPaypal.fromJson(json['paypal'] as Map<String, dynamic>) : null,
  payto: json['payto'] != null ? PostSetupIntentsRequestPaymentMethodOptionsPayto.fromJson(json['payto'] as Map<String, dynamic>) : null,
  sepaDebit: json['sepa_debit'] != null ? PostSetupIntentsRequestPaymentMethodOptionsSepaDebit.fromJson(json['sepa_debit'] as Map<String, dynamic>) : null,
  usBankAccount: json['us_bank_account'] != null ? PostSetupIntentsRequestPaymentMethodOptionsUsBankAccount.fromJson(json['us_bank_account'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsRequestPaymentMethodOptionsAcssDebit? acssDebit;

final PostSetupIntentsRequestPaymentMethodOptionsAmazonPay? amazonPay;

final PostSetupIntentsRequestPaymentMethodOptionsBacsDebit? bacsDebit;

final PostSetupIntentsRequestPaymentMethodOptionsCard? card;

final PostSetupIntentsRequestPaymentMethodOptionsCardPresent? cardPresent;

final PostSetupIntentsRequestPaymentMethodOptionsKlarna? klarna;

final PostSetupIntentsRequestPaymentMethodOptionsLink? link;

final PostSetupIntentsRequestPaymentMethodOptionsPaypal? paypal;

final PostSetupIntentsRequestPaymentMethodOptionsPayto? payto;

final PostSetupIntentsRequestPaymentMethodOptionsSepaDebit? sepaDebit;

final PostSetupIntentsRequestPaymentMethodOptionsUsBankAccount? usBankAccount;

Map<String, dynamic> toJson() { return {
  if (acssDebit != null) 'acss_debit': acssDebit?.toJson(),
  if (amazonPay != null) 'amazon_pay': amazonPay?.toJson(),
  if (bacsDebit != null) 'bacs_debit': bacsDebit?.toJson(),
  if (card != null) 'card': card?.toJson(),
  if (cardPresent != null) 'card_present': cardPresent?.toJson(),
  if (klarna != null) 'klarna': klarna?.toJson(),
  if (link != null) 'link': link?.toJson(),
  if (paypal != null) 'paypal': paypal?.toJson(),
  if (payto != null) 'payto': payto?.toJson(),
  if (sepaDebit != null) 'sepa_debit': sepaDebit?.toJson(),
  if (usBankAccount != null) 'us_bank_account': usBankAccount?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSetupIntentsRequestPaymentMethodOptions copyWith({PostSetupIntentsRequestPaymentMethodOptionsAcssDebit Function()? acssDebit, PostSetupIntentsRequestPaymentMethodOptionsAmazonPay Function()? amazonPay, PostSetupIntentsRequestPaymentMethodOptionsBacsDebit Function()? bacsDebit, PostSetupIntentsRequestPaymentMethodOptionsCard Function()? card, PostSetupIntentsRequestPaymentMethodOptionsCardPresent Function()? cardPresent, PostSetupIntentsRequestPaymentMethodOptionsKlarna Function()? klarna, PostSetupIntentsRequestPaymentMethodOptionsLink Function()? link, PostSetupIntentsRequestPaymentMethodOptionsPaypal Function()? paypal, PostSetupIntentsRequestPaymentMethodOptionsPayto Function()? payto, PostSetupIntentsRequestPaymentMethodOptionsSepaDebit Function()? sepaDebit, PostSetupIntentsRequestPaymentMethodOptionsUsBankAccount Function()? usBankAccount, }) { return PostSetupIntentsRequestPaymentMethodOptions(
  acssDebit: acssDebit != null ? acssDebit() : this.acssDebit,
  amazonPay: amazonPay != null ? amazonPay() : this.amazonPay,
  bacsDebit: bacsDebit != null ? bacsDebit() : this.bacsDebit,
  card: card != null ? card() : this.card,
  cardPresent: cardPresent != null ? cardPresent() : this.cardPresent,
  klarna: klarna != null ? klarna() : this.klarna,
  link: link != null ? link() : this.link,
  paypal: paypal != null ? paypal() : this.paypal,
  payto: payto != null ? payto() : this.payto,
  sepaDebit: sepaDebit != null ? sepaDebit() : this.sepaDebit,
  usBankAccount: usBankAccount != null ? usBankAccount() : this.usBankAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptions &&
          acssDebit == other.acssDebit &&
          amazonPay == other.amazonPay &&
          bacsDebit == other.bacsDebit &&
          card == other.card &&
          cardPresent == other.cardPresent &&
          klarna == other.klarna &&
          link == other.link &&
          paypal == other.paypal &&
          payto == other.payto &&
          sepaDebit == other.sepaDebit &&
          usBankAccount == other.usBankAccount; } 
@override int get hashCode { return Object.hash(acssDebit, amazonPay, bacsDebit, card, cardPresent, klarna, link, paypal, payto, sepaDebit, usBankAccount); } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptions(acssDebit: $acssDebit, amazonPay: $amazonPay, bacsDebit: $bacsDebit, card: $card, cardPresent: $cardPresent, klarna: $klarna, link: $link, paypal: $paypal, payto: $payto, sepaDebit: $sepaDebit, usBankAccount: $usBankAccount)'; } 
 }
