// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionItemsItemRequestMetadataVariant2 {const PostSubscriptionItemsItemRequestMetadataVariant2._(this.value);

factory PostSubscriptionItemsItemRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionItemsItemRequestMetadataVariant2._(json),
}; }

static const PostSubscriptionItemsItemRequestMetadataVariant2 $empty = PostSubscriptionItemsItemRequestMetadataVariant2._('');

static const List<PostSubscriptionItemsItemRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionItemsItemRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionItemsItemRequestMetadataVariant2($value)'; } 
 }
typedef PostSubscriptionItemsItemRequestMetadata = OneOf2<Map<String,String>,PostSubscriptionItemsItemRequestMetadataVariant2>;
