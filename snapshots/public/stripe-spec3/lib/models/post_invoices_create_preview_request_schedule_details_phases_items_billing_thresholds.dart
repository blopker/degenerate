// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param3.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholds = OneOf2<ItemBillingThresholdsParam3,PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2>;
