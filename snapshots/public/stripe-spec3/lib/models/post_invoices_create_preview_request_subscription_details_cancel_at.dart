// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2 $empty = PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2._('');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2($value)'; } 
 }
final class PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3.fromJson(String json) { return switch (json) {
  'max_period_end' => maxPeriodEnd,
  'min_period_end' => minPeriodEnd,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3._(json),
}; }

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3 maxPeriodEnd = PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3._('max_period_end');

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3 minPeriodEnd = PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3._('min_period_end');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3> values = [maxPeriodEnd, minPeriodEnd];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAt = OneOf3<int,PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2,PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3>;