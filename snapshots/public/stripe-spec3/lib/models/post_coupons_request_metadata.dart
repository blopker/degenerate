// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCouponsRequestMetadataVariant2 {const PostCouponsRequestMetadataVariant2._(this.value);

factory PostCouponsRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCouponsRequestMetadataVariant2._(json),
}; }

static const PostCouponsRequestMetadataVariant2 $empty = PostCouponsRequestMetadataVariant2._('');

static const List<PostCouponsRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCouponsRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCouponsRequestMetadataVariant2($value)'; } 
 }
typedef PostCouponsRequestMetadata = OneOf2<Map<String,String>,PostCouponsRequestMetadataVariant2>;