// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param6.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsBancontact = OneOf2<PaymentMethodOptionsParam6,PostPaymentIntentsRequestPaymentMethodOptionsBancontactVariant2>;
