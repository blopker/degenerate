// GENERATED CODE - DO NOT MODIFY BY HAND

import 'amount_details_param2_line_items_variant1_payment_method_options_card.dart';import 'amount_details_param2_line_items_variant1_payment_method_options_card_present.dart';import 'amount_details_param2_line_items_variant1_payment_method_options_klarna.dart';import 'amount_details_param2_line_items_variant1_payment_method_options_paypal.dart';final class AmountDetailsParam2LineItemsVariant1PaymentMethodOptions {const AmountDetailsParam2LineItemsVariant1PaymentMethodOptions({this.card, this.cardPresent, this.klarna, this.paypal, });

factory AmountDetailsParam2LineItemsVariant1PaymentMethodOptions.fromJson(Map<String, dynamic> json) { return AmountDetailsParam2LineItemsVariant1PaymentMethodOptions(
  card: json['card'] != null ? AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCard.fromJson(json['card'] as Map<String, dynamic>) : null,
  cardPresent: json['card_present'] != null ? AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCardPresent.fromJson(json['card_present'] as Map<String, dynamic>) : null,
  klarna: json['klarna'] != null ? AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsKlarna.fromJson(json['klarna'] as Map<String, dynamic>) : null,
  paypal: json['paypal'] != null ? AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypal.fromJson(json['paypal'] as Map<String, dynamic>) : null,
); }

final AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCard? card;

final AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCardPresent? cardPresent;

final AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsKlarna? klarna;

final AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypal? paypal;

Map<String, dynamic> toJson() { return {
  if (card != null) 'card': card?.toJson(),
  if (cardPresent != null) 'card_present': cardPresent?.toJson(),
  if (klarna != null) 'klarna': klarna?.toJson(),
  if (paypal != null) 'paypal': paypal?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card', 'card_present', 'klarna', 'paypal'}.contains(key)); } 
AmountDetailsParam2LineItemsVariant1PaymentMethodOptions copyWith({AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCard Function()? card, AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsCardPresent Function()? cardPresent, AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsKlarna Function()? klarna, AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypal Function()? paypal, }) { return AmountDetailsParam2LineItemsVariant1PaymentMethodOptions(
  card: card != null ? card() : this.card,
  cardPresent: cardPresent != null ? cardPresent() : this.cardPresent,
  klarna: klarna != null ? klarna() : this.klarna,
  paypal: paypal != null ? paypal() : this.paypal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsParam2LineItemsVariant1PaymentMethodOptions &&
          card == other.card &&
          cardPresent == other.cardPresent &&
          klarna == other.klarna &&
          paypal == other.paypal; } 
@override int get hashCode { return Object.hash(card, cardPresent, klarna, paypal); } 
@override String toString() { return 'AmountDetailsParam2LineItemsVariant1PaymentMethodOptions(card: $card, cardPresent: $cardPresent, klarna: $klarna, paypal: $paypal)'; } 
 }
