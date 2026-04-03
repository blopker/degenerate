// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_links_request_invoice_creation_invoice_data_custom_fields_variant1.dart';@immutable final class PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 {const PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._(this.value);

factory PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._(json),
}; }

static const PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 $empty = PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._('');

static const List<PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2($value)'; } 
 }
typedef PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFields = OneOf2<List<PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1>,PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2>;
