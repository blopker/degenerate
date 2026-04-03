// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostProductsIdRequestImagesVariant2 {const PostProductsIdRequestImagesVariant2._(this.value);

factory PostProductsIdRequestImagesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestImagesVariant2._(json),
}; }

static const PostProductsIdRequestImagesVariant2 $empty = PostProductsIdRequestImagesVariant2._('');

static const List<PostProductsIdRequestImagesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostProductsIdRequestImagesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostProductsIdRequestImagesVariant2($value)'; } 
 }
typedef PostProductsIdRequestImages = OneOf2<List<String>,PostProductsIdRequestImagesVariant2>;
