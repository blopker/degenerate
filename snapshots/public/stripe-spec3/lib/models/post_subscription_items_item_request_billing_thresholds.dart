// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param6.dart';@immutable final class PostSubscriptionItemsItemRequestBillingThresholdsVariant2 {const PostSubscriptionItemsItemRequestBillingThresholdsVariant2._(this.value);

factory PostSubscriptionItemsItemRequestBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionItemsItemRequestBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionItemsItemRequestBillingThresholdsVariant2 $empty = PostSubscriptionItemsItemRequestBillingThresholdsVariant2._('');

static const List<PostSubscriptionItemsItemRequestBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionItemsItemRequestBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionItemsItemRequestBillingThresholdsVariant2($value)'; } 
 }
typedef PostSubscriptionItemsItemRequestBillingThresholds = OneOf2<ItemBillingThresholdsParam6,PostSubscriptionItemsItemRequestBillingThresholdsVariant2>;
