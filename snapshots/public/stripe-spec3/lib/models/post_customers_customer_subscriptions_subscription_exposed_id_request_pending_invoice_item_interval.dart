// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pending_invoice_item_interval_params2.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2($value)'; } 
 }
typedef PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval = OneOf2<PendingInvoiceItemIntervalParams2,PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2>;
