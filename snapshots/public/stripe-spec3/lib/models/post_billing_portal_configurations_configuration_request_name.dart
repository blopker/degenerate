// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestNameVariant2 {const PostBillingPortalConfigurationsConfigurationRequestNameVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestNameVariant2._(json),
}; }

static const PostBillingPortalConfigurationsConfigurationRequestNameVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestNameVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestNameVariant2($value)'; } 
 }
typedef PostBillingPortalConfigurationsConfigurationRequestName = OneOf2<String,PostBillingPortalConfigurationsConfigurationRequestNameVariant2>;
