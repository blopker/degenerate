// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param41.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2($value)'; } 
 }
typedef PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini = OneOf2<InvoicePaymentMethodOptionsParam41,PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2>;
