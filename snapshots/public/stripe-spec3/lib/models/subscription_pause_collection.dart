// GENERATED CODE - DO NOT MODIFY BY HAND

import 'subscriptions_resource_pause_collection.dart';/// If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://docs.stripe.com/billing/subscriptions/pause-payment).
final class SubscriptionPauseCollection {const SubscriptionPauseCollection({this.subscriptionsResourcePauseCollection});

factory SubscriptionPauseCollection.fromJson(Map<String, dynamic> json) { return SubscriptionPauseCollection(
  subscriptionsResourcePauseCollection: SubscriptionsResourcePauseCollection.canParse(json) ? SubscriptionsResourcePauseCollection.fromJson(json) : null,
); }

final SubscriptionsResourcePauseCollection? subscriptionsResourcePauseCollection;

/// At least one variant must be present.
bool get isValid { return subscriptionsResourcePauseCollection != null; } 
Map<String, dynamic> toJson() { return {
  ...?subscriptionsResourcePauseCollection?.toJson(),
}; } 
 }
