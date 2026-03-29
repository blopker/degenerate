// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param80.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontact = OneOf2<PaymentMethodOptionsParam80,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBancontactVariant2>;