// GENERATED CODE - DO NOT MODIFY BY HAND

import 'subscriptions_resource_billing_cycle_anchor_config.dart';/// The fixed values used to calculate the `billing_cycle_anchor`.
final class SubscriptionBillingCycleAnchorConfig {const SubscriptionBillingCycleAnchorConfig({this.subscriptionsResourceBillingCycleAnchorConfig});

factory SubscriptionBillingCycleAnchorConfig.fromJson(Map<String, dynamic> json) { return SubscriptionBillingCycleAnchorConfig(
  subscriptionsResourceBillingCycleAnchorConfig: SubscriptionsResourceBillingCycleAnchorConfig.canParse(json) ? SubscriptionsResourceBillingCycleAnchorConfig.fromJson(json) : null,
); }

final SubscriptionsResourceBillingCycleAnchorConfig? subscriptionsResourceBillingCycleAnchorConfig;

/// At least one variant must be present.
bool get isValid { return subscriptionsResourceBillingCycleAnchorConfig != null; } 
Map<String, dynamic> toJson() { return {
  ...?subscriptionsResourceBillingCycleAnchorConfig?.toJson(),
}; } 
 }
