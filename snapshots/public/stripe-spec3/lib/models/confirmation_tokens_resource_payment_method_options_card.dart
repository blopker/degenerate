// GENERATED CODE - DO NOT MODIFY BY HAND

import 'confirmation_tokens_resource_payment_method_options_resource_card.dart';/// This hash contains the card payment method options.
final class ConfirmationTokensResourcePaymentMethodOptionsCard {const ConfirmationTokensResourcePaymentMethodOptionsCard({this.confirmationTokensResourcePaymentMethodOptionsResourceCard});

factory ConfirmationTokensResourcePaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return ConfirmationTokensResourcePaymentMethodOptionsCard(
  confirmationTokensResourcePaymentMethodOptionsResourceCard: ConfirmationTokensResourcePaymentMethodOptionsResourceCard.canParse(json) ? ConfirmationTokensResourcePaymentMethodOptionsResourceCard.fromJson(json) : null,
); }

final ConfirmationTokensResourcePaymentMethodOptionsResourceCard? confirmationTokensResourcePaymentMethodOptionsResourceCard;

/// At least one variant must be present.
bool get isValid { return confirmationTokensResourcePaymentMethodOptionsResourceCard != null; } 
Map<String, dynamic> toJson() { return {
  ...?confirmationTokensResourcePaymentMethodOptionsResourceCard?.toJson(),
}; } 
 }
