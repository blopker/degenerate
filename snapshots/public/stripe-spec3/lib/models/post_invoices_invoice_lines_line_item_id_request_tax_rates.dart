// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2 {const PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2._(this.value);

factory PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2._(json),
}; }

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2 $empty = PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2._('');

static const List<PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceLinesLineItemIdRequestTaxRates = OneOf2<List<String>,PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2>;
