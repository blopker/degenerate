// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2($value)'; } 
 }
typedef PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates = OneOf2<List<String>,PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2>;