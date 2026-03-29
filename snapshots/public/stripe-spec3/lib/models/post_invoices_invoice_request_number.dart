// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoicesInvoiceRequestNumberVariant2 {const PostInvoicesInvoiceRequestNumberVariant2._(this.value);

factory PostInvoicesInvoiceRequestNumberVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestNumberVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestNumberVariant2 $empty = PostInvoicesInvoiceRequestNumberVariant2._('');

static const List<PostInvoicesInvoiceRequestNumberVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestNumberVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestNumberVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceRequestNumber = OneOf2<String,PostInvoicesInvoiceRequestNumberVariant2>;