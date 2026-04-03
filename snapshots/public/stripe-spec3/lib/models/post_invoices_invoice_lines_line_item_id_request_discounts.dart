// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_lines_line_item_id_request_discounts_variant1.dart';@immutable final class PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2 {const PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2._(this.value);

factory PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2._(json),
}; }

static const PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2 $empty = PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2._('');

static const List<PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceLinesLineItemIdRequestDiscounts = OneOf2<List<PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant1>,PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2>;
