// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_configurations_request_features_subscription_update_schedule_at_period_end_conditions.dart';final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd({this.conditions});

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd.fromJson(Map<String, dynamic> json) { return PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd(
  conditions: (json['conditions'] as List<dynamic>?)?.map((e) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions>? conditions;

Map<String, dynamic> toJson() { return {
  if (conditions != null) 'conditions': conditions?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'conditions'}.contains(key)); } 
PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd copyWith({List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions> Function()? conditions}) { return PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd(
  conditions: conditions != null ? conditions() : this.conditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd &&
          listEquals(conditions, other.conditions); } 
@override int get hashCode { return Object.hashAll(conditions ?? const []).hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd(conditions: $conditions)'; } 
 }
