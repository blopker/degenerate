// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 {const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1.fromJson(String json) { return switch (json) {
  'customer_service' => customerService,
  'low_quality' => lowQuality,
  'missing_features' => missingFeatures,
  'other' => $other,
  'switched_service' => switchedService,
  'too_complex' => tooComplex,
  'too_expensive' => tooExpensive,
  'unused' => unused,
  _ => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._(json),
}; }

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 customerService = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('customer_service');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 lowQuality = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('low_quality');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 missingFeatures = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('missing_features');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 $other = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('other');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 switchedService = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('switched_service');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 tooComplex = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('too_complex');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 tooExpensive = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('too_expensive');

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 unused = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1._('unused');

static const List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1> values = [customerService, lowQuality, missingFeatures, $other, switchedService, tooComplex, tooExpensive, unused];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1($value)'; } 
 }
final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2 {const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2._(json),
}; }

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2($value)'; } 
 }
typedef PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptions = OneOf2<List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant1>,PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionCancelCancellationReasonOptionsVariant2>;