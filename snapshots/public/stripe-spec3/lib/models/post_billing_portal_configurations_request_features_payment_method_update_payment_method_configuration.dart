// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2 {const PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2._(json),
}; }

static const PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2 $empty = PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2._('');

static const List<PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2($value)'; } 
 }
typedef PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfiguration = OneOf2<String,PostBillingPortalConfigurationsRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2>;