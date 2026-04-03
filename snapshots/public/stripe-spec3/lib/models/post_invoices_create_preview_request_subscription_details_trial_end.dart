// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1._(json),
}; }

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1 now = PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1._('now');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEnd = OneOf2<PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1,int>;
