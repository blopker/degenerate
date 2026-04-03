// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_confirmation_tokens_request_payment_method_options_card.dart';/// Payment-method-specific configuration for this ConfirmationToken.
@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodOptions {const PostTestHelpersConfirmationTokensRequestPaymentMethodOptions({this.card});

factory PostTestHelpersConfirmationTokensRequestPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PostTestHelpersConfirmationTokensRequestPaymentMethodOptions(
  card: json['card'] != null ? PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCard.fromJson(json['card'] as Map<String, dynamic>) : null,
); }

final PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCard? card;

Map<String, dynamic> toJson() { return {
  if (card != null) 'card': card?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card'}.contains(key)); } 
PostTestHelpersConfirmationTokensRequestPaymentMethodOptions copyWith({PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCard Function()? card}) { return PostTestHelpersConfirmationTokensRequestPaymentMethodOptions(
  card: card != null ? card() : this.card,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodOptions &&
          card == other.card; } 
@override int get hashCode { return card.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodOptions(card: $card)'; } 
 }
