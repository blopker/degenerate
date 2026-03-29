// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param43.dart';final class PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontact = OneOf2<PaymentMethodOptionsParam43,PostPaymentIntentsIntentRequestPaymentMethodOptionsBancontactVariant2>;