// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_confirm_request_payment_method_options_klarna_subscriptions_variant1.dart';final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2($value)'; } 
 }
typedef PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptions = OneOf2<List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1>,PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2>;