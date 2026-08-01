// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'internal_card.dart';/// 
@immutable final class PaymentMethodDetailsMobilepay {const PaymentMethodDetailsMobilepay({this.card = const Omittable.absent()});

factory PaymentMethodDetailsMobilepay.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsMobilepay(
  card: json.containsKey('card') ? Omittable(json['card'] != null ? InternalCard.fromJson(json['card'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Internal card details
final Omittable<InternalCard?> card;

Map<String, dynamic> toJson() { return {
  if (card.isPresent) 'card': card.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card'}.contains(key)); } 
PaymentMethodDetailsMobilepay copyWith({Omittable<InternalCard?>? card}) { return PaymentMethodDetailsMobilepay(
  card: card ?? this.card,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsMobilepay &&
          card == other.card; } 
@override int get hashCode { return card.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsMobilepay(card: $card)'; } 
 }
