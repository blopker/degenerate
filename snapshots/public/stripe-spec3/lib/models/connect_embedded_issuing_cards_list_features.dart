// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class ConnectEmbeddedIssuingCardsListFeatures {const ConnectEmbeddedIssuingCardsListFeatures({required this.cardManagement, required this.cardSpendDisputeManagement, required this.cardholderManagement, required this.disableStripeUserAuthentication, required this.spendControlManagement, });

factory ConnectEmbeddedIssuingCardsListFeatures.fromJson(Map<String, dynamic> json) { return ConnectEmbeddedIssuingCardsListFeatures(
  cardManagement: json['card_management'] as bool,
  cardSpendDisputeManagement: json['card_spend_dispute_management'] as bool,
  cardholderManagement: json['cardholder_management'] as bool,
  disableStripeUserAuthentication: json['disable_stripe_user_authentication'] as bool,
  spendControlManagement: json['spend_control_management'] as bool,
); }

/// Whether to allow card management features.
final bool cardManagement;

/// Whether to allow card spend dispute management features.
final bool cardSpendDisputeManagement;

/// Whether to allow cardholder management features.
final bool cardholderManagement;

/// Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
final bool disableStripeUserAuthentication;

/// Whether to allow spend control management features.
final bool spendControlManagement;

Map<String, dynamic> toJson() { return {
  'card_management': cardManagement,
  'card_spend_dispute_management': cardSpendDisputeManagement,
  'cardholder_management': cardholderManagement,
  'disable_stripe_user_authentication': disableStripeUserAuthentication,
  'spend_control_management': spendControlManagement,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('card_management') && json['card_management'] is bool &&
      json.containsKey('card_spend_dispute_management') && json['card_spend_dispute_management'] is bool &&
      json.containsKey('cardholder_management') && json['cardholder_management'] is bool &&
      json.containsKey('disable_stripe_user_authentication') && json['disable_stripe_user_authentication'] is bool &&
      json.containsKey('spend_control_management') && json['spend_control_management'] is bool; } 
ConnectEmbeddedIssuingCardsListFeatures copyWith({bool? cardManagement, bool? cardSpendDisputeManagement, bool? cardholderManagement, bool? disableStripeUserAuthentication, bool? spendControlManagement, }) { return ConnectEmbeddedIssuingCardsListFeatures(
  cardManagement: cardManagement ?? this.cardManagement,
  cardSpendDisputeManagement: cardSpendDisputeManagement ?? this.cardSpendDisputeManagement,
  cardholderManagement: cardholderManagement ?? this.cardholderManagement,
  disableStripeUserAuthentication: disableStripeUserAuthentication ?? this.disableStripeUserAuthentication,
  spendControlManagement: spendControlManagement ?? this.spendControlManagement,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectEmbeddedIssuingCardsListFeatures &&
          cardManagement == other.cardManagement &&
          cardSpendDisputeManagement == other.cardSpendDisputeManagement &&
          cardholderManagement == other.cardholderManagement &&
          disableStripeUserAuthentication == other.disableStripeUserAuthentication &&
          spendControlManagement == other.spendControlManagement; } 
@override int get hashCode { return Object.hash(cardManagement, cardSpendDisputeManagement, cardholderManagement, disableStripeUserAuthentication, spendControlManagement); } 
@override String toString() { return 'ConnectEmbeddedIssuingCardsListFeatures(cardManagement: $cardManagement, cardSpendDisputeManagement: $cardSpendDisputeManagement, cardholderManagement: $cardholderManagement, disableStripeUserAuthentication: $disableStripeUserAuthentication, spendControlManagement: $spendControlManagement)'; } 
 }
