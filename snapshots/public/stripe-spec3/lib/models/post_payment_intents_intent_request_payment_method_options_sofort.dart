// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param71.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsSofort = OneOf2<PaymentMethodOptionsParam71,PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2>;
