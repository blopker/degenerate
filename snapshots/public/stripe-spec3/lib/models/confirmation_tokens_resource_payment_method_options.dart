// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'confirmation_tokens_resource_payment_method_options_resource_card.dart';/// Payment-method-specific configuration
@immutable final class ConfirmationTokensResourcePaymentMethodOptions {const ConfirmationTokensResourcePaymentMethodOptions({this.card});

factory ConfirmationTokensResourcePaymentMethodOptions.fromJson(Map<String, dynamic> json) { return ConfirmationTokensResourcePaymentMethodOptions(
  card: json['card'] != null ? ConfirmationTokensResourcePaymentMethodOptionsResourceCard.fromJson(json['card'] as Map<String, dynamic>) : null,
); }

/// This hash contains the card payment method options.
final ConfirmationTokensResourcePaymentMethodOptionsResourceCard? card;

Map<String, dynamic> toJson() { return {
  if (card != null) 'card': card?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card'}.contains(key)); } 
ConfirmationTokensResourcePaymentMethodOptions copyWith({ConfirmationTokensResourcePaymentMethodOptionsResourceCard? Function()? card}) { return ConfirmationTokensResourcePaymentMethodOptions(
  card: card != null ? card() : this.card,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConfirmationTokensResourcePaymentMethodOptions &&
          card == other.card; } 
@override int get hashCode { return card.hashCode; } 
@override String toString() { return 'ConfirmationTokensResourcePaymentMethodOptions(card: $card)'; } 
 }
