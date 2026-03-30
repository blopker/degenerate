// GENERATED CODE - DO NOT MODIFY BY HAND

import 'internal_card.dart';/// 
final class PaymentMethodDetailsMobilepay {const PaymentMethodDetailsMobilepay({this.card});

factory PaymentMethodDetailsMobilepay.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsMobilepay(
  card: json['card'] != null ? InternalCard.fromJson(json['card'] as Map<String, dynamic>) : null,
); }

/// Internal card details
final InternalCard? card;

Map<String, dynamic> toJson() { return {
  if (card != null) 'card': card?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card'}.contains(key)); } 
PaymentMethodDetailsMobilepay copyWith({InternalCard? Function()? card}) { return PaymentMethodDetailsMobilepay(
  card: card != null ? card() : this.card,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsMobilepay &&
          card == other.card; } 
@override int get hashCode { return card.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsMobilepay(card: $card)'; } 
 }
