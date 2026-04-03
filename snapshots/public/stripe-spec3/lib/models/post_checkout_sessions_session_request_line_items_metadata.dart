// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2 {const PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2._(this.value);

factory PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2._(json),
}; }

static const PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2 $empty = PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2._('');

static const List<PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2($value)'; } 
 }
typedef PostCheckoutSessionsSessionRequestLineItemsMetadata = OneOf2<Map<String,String>,PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2>;
