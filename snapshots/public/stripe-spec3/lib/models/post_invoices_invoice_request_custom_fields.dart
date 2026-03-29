// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_request_custom_fields_variant1.dart';final class PostInvoicesInvoiceRequestCustomFieldsVariant2 {const PostInvoicesInvoiceRequestCustomFieldsVariant2._(this.value);

factory PostInvoicesInvoiceRequestCustomFieldsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestCustomFieldsVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestCustomFieldsVariant2 $empty = PostInvoicesInvoiceRequestCustomFieldsVariant2._('');

static const List<PostInvoicesInvoiceRequestCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestCustomFieldsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestCustomFieldsVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceRequestCustomFields = OneOf2<List<PostInvoicesInvoiceRequestCustomFieldsVariant1>,PostInvoicesInvoiceRequestCustomFieldsVariant2>;