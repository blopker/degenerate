// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_intent_payment_method_options_acss_debit.dart';import 'setup_intent_payment_method_options_acss_debit2.dart';import 'setup_intent_payment_method_options_amazon_pay.dart';import 'setup_intent_payment_method_options_amazon_pay2.dart';import 'setup_intent_payment_method_options_bacs_debit.dart';import 'setup_intent_payment_method_options_bacs_debit2.dart';import 'setup_intent_payment_method_options_card.dart';import 'setup_intent_payment_method_options_card2.dart';import 'setup_intent_payment_method_options_card_present.dart';import 'setup_intent_payment_method_options_card_present2.dart';import 'setup_intent_payment_method_options_klarna.dart';import 'setup_intent_payment_method_options_klarna2.dart';import 'setup_intent_payment_method_options_link.dart';import 'setup_intent_payment_method_options_link2.dart';import 'setup_intent_payment_method_options_paypal.dart';import 'setup_intent_payment_method_options_paypal2.dart';import 'setup_intent_payment_method_options_payto.dart';import 'setup_intent_payment_method_options_payto2.dart';import 'setup_intent_payment_method_options_sepa_debit.dart';import 'setup_intent_payment_method_options_sepa_debit2.dart';import 'setup_intent_payment_method_options_us_bank_account.dart';import 'setup_intent_payment_method_options_us_bank_account2.dart';import 'setup_intent_type_specific_payment_method_options_client.dart';/// 
final class SetupIntentPaymentMethodOptions {const SetupIntentPaymentMethodOptions({this.acssDebit, this.amazonPay, this.bacsDebit, this.card, this.cardPresent, this.klarna, this.link, this.paypal, this.payto, this.sepaDebit, this.usBankAccount, });

factory SetupIntentPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return SetupIntentPaymentMethodOptions(
  acssDebit: json['acss_debit'] != null ? OneOf2.parse(json['acss_debit'], fromA: (v) => SetupIntentPaymentMethodOptionsAcssDebit.fromJson(v as Map<String, dynamic>), fromB: (v) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  amazonPay: json['amazon_pay'] != null ? OneOf2.parse(json['amazon_pay'], fromA: (v) => SetupIntentPaymentMethodOptionsAmazonPay.fromJson(v as Map<String, dynamic>), fromB: (v) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  bacsDebit: json['bacs_debit'] != null ? OneOf2.parse(json['bacs_debit'], fromA: (v) => SetupIntentPaymentMethodOptionsBacsDebit.fromJson(v as Map<String, dynamic>), fromB: (v) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  card: json['card'] != null ? OneOf2.parse(json['card'], fromA: (v) => SetupIntentPaymentMethodOptionsCard.fromJson(v as Map<String, dynamic>), fromB: (v) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  cardPresent: json['card_present'] != null ? OneOf2.parse(json['card_present'], fromA: (v) => SetupIntentPaymentMethodOptionsCardPresent.fromJson(v as Map<String, dynamic>), fromB: (v) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  klarna: json['klarna'] != null ? OneOf2.parse(json['klarna'], fromA: (v) => SetupIntentPaymentMethodOptionsKlarna.fromJson(v as Map<String, dynamic>), fromB: (v) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  link: json['link'] != null ? OneOf2.parse(json['link'], fromA: (v) => SetupIntentPaymentMethodOptionsLink.fromJson(v as Map<String, dynamic>), fromB: (v) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  paypal: json['paypal'] != null ? OneOf2.parse(json['paypal'], fromA: (v) => SetupIntentPaymentMethodOptionsPaypal.fromJson(v as Map<String, dynamic>), fromB: (v) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  payto: json['payto'] != null ? OneOf2.parse(json['payto'], fromA: (v) => SetupIntentPaymentMethodOptionsPayto.fromJson(v as Map<String, dynamic>), fromB: (v) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  sepaDebit: json['sepa_debit'] != null ? OneOf2.parse(json['sepa_debit'], fromA: (v) => SetupIntentPaymentMethodOptionsSepaDebit.fromJson(v as Map<String, dynamic>), fromB: (v) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  usBankAccount: json['us_bank_account'] != null ? OneOf2.parse(json['us_bank_account'], fromA: (v) => SetupIntentPaymentMethodOptionsUsBankAccount.fromJson(v as Map<String, dynamic>), fromB: (v) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
); }

final SetupIntentPaymentMethodOptionsAcssDebit2? acssDebit;

final SetupIntentPaymentMethodOptionsAmazonPay2? amazonPay;

final SetupIntentPaymentMethodOptionsBacsDebit2? bacsDebit;

final SetupIntentPaymentMethodOptionsCard2? card;

final SetupIntentPaymentMethodOptionsCardPresent2? cardPresent;

final SetupIntentPaymentMethodOptionsKlarna2? klarna;

final SetupIntentPaymentMethodOptionsLink2? link;

final SetupIntentPaymentMethodOptionsPaypal2? paypal;

final SetupIntentPaymentMethodOptionsPayto2? payto;

final SetupIntentPaymentMethodOptionsSepaDebit2? sepaDebit;

final SetupIntentPaymentMethodOptionsUsBankAccount2? usBankAccount;

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
SetupIntentPaymentMethodOptions copyWith({SetupIntentPaymentMethodOptionsAcssDebit2 Function()? acssDebit, SetupIntentPaymentMethodOptionsAmazonPay2 Function()? amazonPay, SetupIntentPaymentMethodOptionsBacsDebit2 Function()? bacsDebit, SetupIntentPaymentMethodOptionsCard2 Function()? card, SetupIntentPaymentMethodOptionsCardPresent2 Function()? cardPresent, SetupIntentPaymentMethodOptionsKlarna2 Function()? klarna, SetupIntentPaymentMethodOptionsLink2 Function()? link, SetupIntentPaymentMethodOptionsPaypal2 Function()? paypal, SetupIntentPaymentMethodOptionsPayto2 Function()? payto, SetupIntentPaymentMethodOptionsSepaDebit2 Function()? sepaDebit, SetupIntentPaymentMethodOptionsUsBankAccount2 Function()? usBankAccount, }) { return SetupIntentPaymentMethodOptions(
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
      other is SetupIntentPaymentMethodOptions &&
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
@override String toString() { return 'SetupIntentPaymentMethodOptions(acssDebit: $acssDebit, amazonPay: $amazonPay, bacsDebit: $bacsDebit, card: $card, cardPresent: $cardPresent, klarna: $klarna, link: $link, paypal: $paypal, payto: $payto, sepaDebit: $sepaDebit, usBankAccount: $usBankAccount)'; } 
 }
