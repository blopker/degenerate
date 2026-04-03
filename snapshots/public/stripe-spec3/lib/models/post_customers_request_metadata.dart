// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersRequestMetadataVariant2 {const PostCustomersRequestMetadataVariant2._(this.value);

factory PostCustomersRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersRequestMetadataVariant2._(json),
}; }

static const PostCustomersRequestMetadataVariant2 $empty = PostCustomersRequestMetadataVariant2._('');

static const List<PostCustomersRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersRequestMetadataVariant2($value)'; } 
 }
typedef PostCustomersRequestMetadata = OneOf2<Map<String,String>,PostCustomersRequestMetadataVariant2>;
