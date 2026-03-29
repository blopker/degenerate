// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostProductsIdRequestUrlVariant2 {const PostProductsIdRequestUrlVariant2._(this.value);

factory PostProductsIdRequestUrlVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestUrlVariant2._(json),
}; }

static const PostProductsIdRequestUrlVariant2 $empty = PostProductsIdRequestUrlVariant2._('');

static const List<PostProductsIdRequestUrlVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostProductsIdRequestUrlVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostProductsIdRequestUrlVariant2($value)'; } 
 }
typedef PostProductsIdRequestUrl = OneOf2<String,PostProductsIdRequestUrlVariant2>;