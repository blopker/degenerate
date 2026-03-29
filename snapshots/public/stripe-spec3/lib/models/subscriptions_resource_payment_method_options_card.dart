// GENERATED CODE - DO NOT MODIFY BY HAND

import 'subscription_payment_method_options_card.dart';/// This sub-hash contains details about the Card payment method options to pass to invoices created by the subscription.
final class SubscriptionsResourcePaymentMethodOptionsCard {const SubscriptionsResourcePaymentMethodOptionsCard({this.subscriptionPaymentMethodOptionsCard});

factory SubscriptionsResourcePaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return SubscriptionsResourcePaymentMethodOptionsCard(
  subscriptionPaymentMethodOptionsCard: SubscriptionPaymentMethodOptionsCard.canParse(json) ? SubscriptionPaymentMethodOptionsCard.fromJson(json) : null,
); }

final SubscriptionPaymentMethodOptionsCard? subscriptionPaymentMethodOptionsCard;

/// At least one variant must be present.
bool get isValid { return subscriptionPaymentMethodOptionsCard != null; } 
Map<String, dynamic> toJson() { return {
  ...?subscriptionPaymentMethodOptionsCard?.toJson(),
}; } 
 }
