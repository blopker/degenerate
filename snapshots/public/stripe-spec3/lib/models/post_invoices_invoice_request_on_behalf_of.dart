// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoicesInvoiceRequestOnBehalfOfVariant2 {const PostInvoicesInvoiceRequestOnBehalfOfVariant2._(this.value);

factory PostInvoicesInvoiceRequestOnBehalfOfVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestOnBehalfOfVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestOnBehalfOfVariant2 $empty = PostInvoicesInvoiceRequestOnBehalfOfVariant2._('');

static const List<PostInvoicesInvoiceRequestOnBehalfOfVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestOnBehalfOfVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestOnBehalfOfVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceRequestOnBehalfOf = OneOf2<String,PostInvoicesInvoiceRequestOnBehalfOfVariant2>;