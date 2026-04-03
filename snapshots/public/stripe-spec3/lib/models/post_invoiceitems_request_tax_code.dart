// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoiceitemsRequestTaxCodeVariant2 {const PostInvoiceitemsRequestTaxCodeVariant2._(this.value);

factory PostInvoiceitemsRequestTaxCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoiceitemsRequestTaxCodeVariant2._(json),
}; }

static const PostInvoiceitemsRequestTaxCodeVariant2 $empty = PostInvoiceitemsRequestTaxCodeVariant2._('');

static const List<PostInvoiceitemsRequestTaxCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoiceitemsRequestTaxCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoiceitemsRequestTaxCodeVariant2($value)'; } 
 }
typedef PostInvoiceitemsRequestTaxCode = OneOf2<String,PostInvoiceitemsRequestTaxCodeVariant2>;
