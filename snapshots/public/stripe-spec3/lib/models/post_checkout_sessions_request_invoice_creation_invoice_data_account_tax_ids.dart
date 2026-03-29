// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2 {const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2._(this.value);

factory PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2._(json),
}; }

static const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2 $empty = PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2._('');

static const List<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2($value)'; } 
 }
typedef PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIds = OneOf2<List<String>,PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2>;