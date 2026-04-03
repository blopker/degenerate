// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscriptions_subscription_exposed_id_request_trial_settings_end_behavior.dart';/// Settings related to subscription trials.
@immutable final class PostSubscriptionsSubscriptionExposedIdRequestTrialSettings {const PostSubscriptionsSubscriptionExposedIdRequestTrialSettings({required this.endBehavior});

factory PostSubscriptionsSubscriptionExposedIdRequestTrialSettings.fromJson(Map<String, dynamic> json) { return PostSubscriptionsSubscriptionExposedIdRequestTrialSettings(
  endBehavior: PostSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior.fromJson(json['end_behavior'] as Map<String, dynamic>),
); }

final PostSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior endBehavior;

Map<String, dynamic> toJson() { return {
  'end_behavior': endBehavior.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end_behavior'); } 
PostSubscriptionsSubscriptionExposedIdRequestTrialSettings copyWith({PostSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior? endBehavior}) { return PostSubscriptionsSubscriptionExposedIdRequestTrialSettings(
  endBehavior: endBehavior ?? this.endBehavior,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestTrialSettings &&
          endBehavior == other.endBehavior; } 
@override int get hashCode { return endBehavior.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestTrialSettings(endBehavior: $endBehavior)'; } 
 }
