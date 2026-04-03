// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param3.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholds = OneOf2<BillingThresholdsParam3,PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2>;
