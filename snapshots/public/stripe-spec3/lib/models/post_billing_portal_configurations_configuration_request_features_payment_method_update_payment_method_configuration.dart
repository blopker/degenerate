// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2 {const PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2._(json),
}; }

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2($value)'; } 
 }
typedef PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfiguration = OneOf2<String,PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2>;
