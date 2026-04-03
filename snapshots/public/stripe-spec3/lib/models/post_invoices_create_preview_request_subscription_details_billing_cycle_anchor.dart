// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1.fromJson(String json) { return switch (json) {
  'now' => now,
  'unchanged' => unchanged,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1._(json),
}; }

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1 now = PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1._('now');

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1 unchanged = PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1._('unchanged');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1> values = [now, unchanged];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchor = OneOf2<PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1,int>;
