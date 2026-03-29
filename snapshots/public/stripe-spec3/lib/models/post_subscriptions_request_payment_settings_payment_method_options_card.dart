// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription_payment_method_options_param3.dart';final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2 {const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(this.value);

factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(json),
}; }

static const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2 $empty = PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2._('');

static const List<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2($value)'; } 
 }
typedef PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCard = OneOf2<SubscriptionPaymentMethodOptionsParam3,PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2>;