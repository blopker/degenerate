// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2 {const PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2._(this.value);

factory PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2._(json),
}; }

static const PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2 $empty = PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2._('');

static const List<PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2($value)'; } 
 }
typedef PostSubscriptionsRequestAddInvoiceItemsTaxRates = OneOf2<List<String>,PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2>;
