// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2 {const PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2 $empty = PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2._('');

static const List<PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestInvoiceItemsTaxCode = OneOf2<String,PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2>;