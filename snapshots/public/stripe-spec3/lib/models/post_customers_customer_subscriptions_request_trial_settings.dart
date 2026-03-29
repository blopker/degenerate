// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_customers_customer_subscriptions_request_trial_settings_end_behavior.dart';/// Settings related to subscription trials.
final class PostCustomersCustomerSubscriptionsRequestTrialSettings {const PostCustomersCustomerSubscriptionsRequestTrialSettings({required this.endBehavior});

factory PostCustomersCustomerSubscriptionsRequestTrialSettings.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsRequestTrialSettings(
  endBehavior: PostCustomersCustomerSubscriptionsRequestTrialSettingsEndBehavior.fromJson(json['end_behavior'] as Map<String, dynamic>),
); }

final PostCustomersCustomerSubscriptionsRequestTrialSettingsEndBehavior endBehavior;

Map<String, dynamic> toJson() { return {
  'end_behavior': endBehavior.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end_behavior'); } 
PostCustomersCustomerSubscriptionsRequestTrialSettings copyWith({PostCustomersCustomerSubscriptionsRequestTrialSettingsEndBehavior? endBehavior}) { return PostCustomersCustomerSubscriptionsRequestTrialSettings(
  endBehavior: endBehavior ?? this.endBehavior,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestTrialSettings &&
          endBehavior == other.endBehavior; } 
@override int get hashCode { return endBehavior.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestTrialSettings(endBehavior: $endBehavior)'; } 
 }
