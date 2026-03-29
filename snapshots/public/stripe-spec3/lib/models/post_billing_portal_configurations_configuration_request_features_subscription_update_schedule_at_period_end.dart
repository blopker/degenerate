// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_configurations_configuration_request_features_subscription_update_schedule_at_period_end_conditions.dart';import 'post_billing_portal_configurations_configuration_request_features_subscription_update_schedule_at_period_end_conditions_variant1.dart';final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd {const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd({this.conditions});

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd.fromJson(Map<String, dynamic> json) { return PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd(
  conditions: json['conditions'] != null ? OneOf2.parse(json['conditions'], fromA: (v) => (v as List<dynamic>).map((e) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2.fromJson(v as String),) : null,
); }

final PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions? conditions;

Map<String, dynamic> toJson() { return {
  if (conditions != null) 'conditions': conditions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd copyWith({PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions Function()? conditions}) { return PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd(
  conditions: conditions != null ? conditions() : this.conditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd &&
          conditions == other.conditions; } 
@override int get hashCode { return conditions.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd(conditions: $conditions)'; } 
 }
