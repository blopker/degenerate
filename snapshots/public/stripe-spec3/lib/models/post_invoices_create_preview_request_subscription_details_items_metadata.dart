// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2 $empty = PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2._('');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadata = OneOf2<Map<String,String>,PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsMetadataVariant2>;
