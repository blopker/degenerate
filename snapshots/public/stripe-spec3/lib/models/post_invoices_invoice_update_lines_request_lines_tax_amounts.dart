// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_update_lines_request_lines_tax_amounts_variant1.dart';@immutable final class PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2 {const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2._(this.value);

factory PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2._(json),
}; }

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2 $empty = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2._('');

static const List<PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmounts = OneOf2<List<PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1>,PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2>;
