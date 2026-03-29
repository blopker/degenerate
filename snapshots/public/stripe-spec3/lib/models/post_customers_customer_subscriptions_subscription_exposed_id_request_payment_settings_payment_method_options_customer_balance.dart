// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param10.dart';final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2($value)'; } 
 }
typedef PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance = OneOf2<InvoicePaymentMethodOptionsParam10,PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2>;