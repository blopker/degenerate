// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostProductsIdRequestUnitLabelVariant2 {const PostProductsIdRequestUnitLabelVariant2._(this.value);

factory PostProductsIdRequestUnitLabelVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestUnitLabelVariant2._(json),
}; }

static const PostProductsIdRequestUnitLabelVariant2 $empty = PostProductsIdRequestUnitLabelVariant2._('');

static const List<PostProductsIdRequestUnitLabelVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostProductsIdRequestUnitLabelVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostProductsIdRequestUnitLabelVariant2($value)'; } 
 }
typedef PostProductsIdRequestUnitLabel = OneOf2<String,PostProductsIdRequestUnitLabelVariant2>;
