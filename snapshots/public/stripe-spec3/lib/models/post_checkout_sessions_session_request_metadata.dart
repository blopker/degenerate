// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCheckoutSessionsSessionRequestMetadataVariant2 {const PostCheckoutSessionsSessionRequestMetadataVariant2._(this.value);

factory PostCheckoutSessionsSessionRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsSessionRequestMetadataVariant2._(json),
}; }

static const PostCheckoutSessionsSessionRequestMetadataVariant2 $empty = PostCheckoutSessionsSessionRequestMetadataVariant2._('');

static const List<PostCheckoutSessionsSessionRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsSessionRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestMetadataVariant2($value)'; } 
 }
typedef PostCheckoutSessionsSessionRequestMetadata = OneOf2<Map<String,String>,PostCheckoutSessionsSessionRequestMetadataVariant2>;