// GENERATED CODE - DO NOT MODIFY BY HAND

import 'subscriptions_resource_payment_settings.dart';/// Payment settings passed on to invoices created by the subscription.
final class SubscriptionPaymentSettings {const SubscriptionPaymentSettings({this.subscriptionsResourcePaymentSettings});

factory SubscriptionPaymentSettings.fromJson(Map<String, dynamic> json) { return SubscriptionPaymentSettings(
  subscriptionsResourcePaymentSettings: SubscriptionsResourcePaymentSettings.canParse(json) ? SubscriptionsResourcePaymentSettings.fromJson(json) : null,
); }

final SubscriptionsResourcePaymentSettings? subscriptionsResourcePaymentSettings;

/// At least one variant must be present.
bool get isValid { return subscriptionsResourcePaymentSettings != null; } 
Map<String, dynamic> toJson() { return {
  ...?subscriptionsResourcePaymentSettings?.toJson(),
}; } 
 }
