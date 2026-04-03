// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2 {const PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2._(json),
}; }

static const PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2($value)'; } 
 }
typedef PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrl = OneOf2<String,PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2>;
