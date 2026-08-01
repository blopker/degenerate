// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'confirmation_tokens_resource_payment_method_options_resource_card.dart';/// Payment-method-specific configuration
@immutable final class ConfirmationTokensResourcePaymentMethodOptions {const ConfirmationTokensResourcePaymentMethodOptions({this.card = const Omittable.absent()});

factory ConfirmationTokensResourcePaymentMethodOptions.fromJson(Map<String, dynamic> json) { return ConfirmationTokensResourcePaymentMethodOptions(
  card: json.containsKey('card') ? Omittable(json['card'] != null ? ConfirmationTokensResourcePaymentMethodOptionsResourceCard.fromJson(json['card'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// This hash contains the card payment method options.
final Omittable<ConfirmationTokensResourcePaymentMethodOptionsResourceCard?> card;

Map<String, dynamic> toJson() { return {
  if (card.isPresent) 'card': card.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card'}.contains(key)); } 
ConfirmationTokensResourcePaymentMethodOptions copyWith({Omittable<ConfirmationTokensResourcePaymentMethodOptionsResourceCard?>? card}) { return ConfirmationTokensResourcePaymentMethodOptions(
  card: card ?? this.card,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConfirmationTokensResourcePaymentMethodOptions &&
          card == other.card; } 
@override int get hashCode { return card.hashCode; } 
@override String toString() { return 'ConfirmationTokensResourcePaymentMethodOptions(card: $card)'; } 
 }
