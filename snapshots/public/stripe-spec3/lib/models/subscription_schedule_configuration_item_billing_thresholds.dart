// GENERATED CODE - DO NOT MODIFY BY HAND

import 'subscription_item_billing_thresholds.dart';/// Define thresholds at which an invoice will be sent, and the related subscription advanced to a new billing period
final class SubscriptionScheduleConfigurationItemBillingThresholds {const SubscriptionScheduleConfigurationItemBillingThresholds({this.subscriptionItemBillingThresholds});

factory SubscriptionScheduleConfigurationItemBillingThresholds.fromJson(Map<String, dynamic> json) { return SubscriptionScheduleConfigurationItemBillingThresholds(
  subscriptionItemBillingThresholds: SubscriptionItemBillingThresholds.canParse(json) ? SubscriptionItemBillingThresholds.fromJson(json) : null,
); }

final SubscriptionItemBillingThresholds? subscriptionItemBillingThresholds;

/// At least one variant must be present.
bool get isValid { return subscriptionItemBillingThresholds != null; } 
Map<String, dynamic> toJson() { return {
  ...?subscriptionItemBillingThresholds?.toJson(),
}; } 
 }
