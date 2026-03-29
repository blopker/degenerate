// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_lines_line_item_id_request_tax_amounts_variant1.dart';final class PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2 {const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2._(this.value);

factory PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2._(json),
}; }

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2 $empty = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2._('');

static const List<PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceLinesLineItemIdRequestTaxAmounts = OneOf2<List<PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1>,PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2>;