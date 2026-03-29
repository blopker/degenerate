// GENERATED CODE - DO NOT MODIFY BY HAND

import 'subscription_billing_thresholds.dart';/// Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
final class SubscriptionSchedulePhaseConfigurationBillingThresholds {const SubscriptionSchedulePhaseConfigurationBillingThresholds({this.subscriptionBillingThresholds});

factory SubscriptionSchedulePhaseConfigurationBillingThresholds.fromJson(Map<String, dynamic> json) { return SubscriptionSchedulePhaseConfigurationBillingThresholds(
  subscriptionBillingThresholds: SubscriptionBillingThresholds.canParse(json) ? SubscriptionBillingThresholds.fromJson(json) : null,
); }

final SubscriptionBillingThresholds? subscriptionBillingThresholds;

/// At least one variant must be present.
bool get isValid { return subscriptionBillingThresholds != null; } 
Map<String, dynamic> toJson() { return {
  ...?subscriptionBillingThresholds?.toJson(),
}; } 
 }
