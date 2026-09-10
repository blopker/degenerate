// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_configurations_configuration_request_features_subscription_update_schedule_at_period_end_conditions_variant1.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2 {const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2._(json),
};}

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2($value)';}
}

@immutable
final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions {
  const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions({this.listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant1 = const Omittable.absent(),
this.postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions._({required this.rawValue, required this.listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant1,
required this.postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2,});
  factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions.fromJson(Object? json) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions._(
    rawValue: Omittable(json),
    listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant1: parseAnyOfVariant<List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2>(json, (value) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant1>> listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant1;
final Omittable<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2> postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant1.isPresent || postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant1.isPresent) listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant1.value?.map((e) => e.toJson()).toList(),
if (postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2.isPresent) postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions(${toJson()})';
}
