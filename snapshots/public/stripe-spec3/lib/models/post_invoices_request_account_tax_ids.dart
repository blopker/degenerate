// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoicesRequestAccountTaxIdsVariant2 {const PostInvoicesRequestAccountTaxIdsVariant2._(this.value);

factory PostInvoicesRequestAccountTaxIdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestAccountTaxIdsVariant2._(json),
}; }

static const PostInvoicesRequestAccountTaxIdsVariant2 $empty = PostInvoicesRequestAccountTaxIdsVariant2._('');

static const List<PostInvoicesRequestAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestAccountTaxIdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestAccountTaxIdsVariant2($value)'; } 
 }
typedef PostInvoicesRequestAccountTaxIds = OneOf2<List<String>,PostInvoicesRequestAccountTaxIdsVariant2>;