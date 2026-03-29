// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_flows_private_payment_methods_card_payment_intent_amount_details_line_item_payment_method_options.dart';import 'payment_flows_private_payment_methods_card_present_amount_details_line_item_payment_method_options.dart';import 'payment_flows_private_payment_methods_klarna_payment_intent_amount_details_line_item_payment_method_options.dart';import 'payment_flows_private_payment_methods_paypal_amount_details_line_item_payment_method_options.dart';/// 
final class PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions {const PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions({this.card, this.cardPresent, this.klarna, this.paypal, });

factory PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions(
  card: json['card'] != null ? PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions.fromJson(json['card'] as Map<String, dynamic>) : null,
  cardPresent: json['card_present'] != null ? PaymentFlowsPrivatePaymentMethodsCardPresentAmountDetailsLineItemPaymentMethodOptions.fromJson(json['card_present'] as Map<String, dynamic>) : null,
  klarna: json['klarna'] != null ? PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions.fromJson(json['klarna'] as Map<String, dynamic>) : null,
  paypal: json['paypal'] != null ? PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions.fromJson(json['paypal'] as Map<String, dynamic>) : null,
); }

final PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions? card;

final PaymentFlowsPrivatePaymentMethodsCardPresentAmountDetailsLineItemPaymentMethodOptions? cardPresent;

final PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions? klarna;

final PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions? paypal;

Map<String, dynamic> toJson() { return {
  if (card != null) 'card': card?.toJson(),
  if (cardPresent != null) 'card_present': cardPresent?.toJson(),
  if (klarna != null) 'klarna': klarna?.toJson(),
  if (paypal != null) 'paypal': paypal?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions copyWith({PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions Function()? card, PaymentFlowsPrivatePaymentMethodsCardPresentAmountDetailsLineItemPaymentMethodOptions Function()? cardPresent, PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions Function()? klarna, PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions Function()? paypal, }) { return PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions(
  card: card != null ? card() : this.card,
  cardPresent: cardPresent != null ? cardPresent() : this.cardPresent,
  klarna: klarna != null ? klarna() : this.klarna,
  paypal: paypal != null ? paypal() : this.paypal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions &&
          card == other.card &&
          cardPresent == other.cardPresent &&
          klarna == other.klarna &&
          paypal == other.paypal; } 
@override int get hashCode { return Object.hash(card, cardPresent, klarna, paypal); } 
@override String toString() { return 'PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions(card: $card, cardPresent: $cardPresent, klarna: $klarna, paypal: $paypal)'; } 
 }
