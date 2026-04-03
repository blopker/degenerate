// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestBusinessProfileTermsOfServiceUrlVariant2 {const PostBillingPortalConfigurationsConfigurationRequestBusinessProfileTermsOfServiceUrlVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestBusinessProfileTermsOfServiceUrlVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestBusinessProfileTermsOfServiceUrlVariant2._(json),
}; }

static const PostBillingPortalConfigurationsConfigurationRequestBusinessProfileTermsOfServiceUrlVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestBusinessProfileTermsOfServiceUrlVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestBusinessProfileTermsOfServiceUrlVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestBusinessProfileTermsOfServiceUrlVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestBusinessProfileTermsOfServiceUrlVariant2($value)'; } 
 }
typedef PostBillingPortalConfigurationsConfigurationRequestBusinessProfileTermsOfServiceUrl = OneOf2<String,PostBillingPortalConfigurationsConfigurationRequestBusinessProfileTermsOfServiceUrlVariant2>;
