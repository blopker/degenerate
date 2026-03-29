// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType.fromJson(String json) { return switch (json) {
  'decreasing_item_amount' => decreasingItemAmount,
  'shortening_interval' => shorteningInterval,
  _ => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType._(json),
}; }

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType decreasingItemAmount = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType._('decreasing_item_amount');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType shorteningInterval = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType._('shortening_interval');

static const List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType> values = [decreasingItemAmount, shorteningInterval];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType($value)'; } 
 }
final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions({required this.type});

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions.fromJson(Map<String, dynamic> json) { return PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions(
  type: PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType.fromJson(json['type'] as String),
); }

final PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions copyWith({PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType? type}) { return PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions(type: $type)'; } 
 }
