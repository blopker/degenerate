// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostProductsIdRequestDescriptionVariant2 {const PostProductsIdRequestDescriptionVariant2._(this.value);

factory PostProductsIdRequestDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestDescriptionVariant2._(json),
}; }

static const PostProductsIdRequestDescriptionVariant2 $empty = PostProductsIdRequestDescriptionVariant2._('');

static const List<PostProductsIdRequestDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostProductsIdRequestDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostProductsIdRequestDescriptionVariant2($value)'; } 
 }
typedef PostProductsIdRequestDescription = OneOf2<String,PostProductsIdRequestDescriptionVariant2>;
