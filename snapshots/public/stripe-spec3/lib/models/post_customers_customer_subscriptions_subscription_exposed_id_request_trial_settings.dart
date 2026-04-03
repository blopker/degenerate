// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_trial_settings_end_behavior.dart';/// Settings related to subscription trials.
@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettings {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettings({required this.endBehavior});

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettings.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettings(
  endBehavior: PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior.fromJson(json['end_behavior'] as Map<String, dynamic>),
); }

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior endBehavior;

Map<String, dynamic> toJson() { return {
  'end_behavior': endBehavior.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end_behavior'); } 
PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettings copyWith({PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior? endBehavior}) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettings(
  endBehavior: endBehavior ?? this.endBehavior,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettings &&
          endBehavior == other.endBehavior; } 
@override int get hashCode { return endBehavior.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettings(endBehavior: $endBehavior)'; } 
 }
