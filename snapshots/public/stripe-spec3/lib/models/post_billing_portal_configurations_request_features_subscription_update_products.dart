// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_configurations_request_features_subscription_update_products_variant1.dart';@immutable final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2 {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2._(json),
}; }

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2 $empty = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2._('');

static const List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2($value)'; } 
 }
typedef PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProducts = OneOf2<List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1>,PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2>;
